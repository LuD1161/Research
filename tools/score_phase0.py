#!/usr/bin/env python3
"""Score exp07 Phase 0 auth-lens A/B from durable checkpoints.

Reads analysis/experiments/exp07/phase0/checkpoints/<id>_<arm>_r<rep>.json (each
{findings:[...], _done:true}) + ground_truth_phase0.json. Computes per-arm recall on
positives and false-positive rate on negatives, plus per-file catch k/3.

catch (positive)  = arm-rep emits >=1 finding whose vuln_class is access-control-ish
FP    (negative)  = arm-rep emits >=1 access-control-ish finding
(Per-file review => file-level match per the plan; the only AC issue in each positive
file IS the labeled one.)
"""
import json, os, re, glob, sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
GT = os.path.join(ROOT, 'analysis/experiments/exp07/ground_truth_phase0.json')
CK = os.path.join(ROOT, 'analysis/experiments/exp07/phase0/checkpoints')

AC_RE = re.compile(r'access|author|capab|privil|idor|broken_access|missing_auth', re.I)

def is_ac(finding):
    vc = (finding.get('vuln_class') or '') + ' ' + (finding.get('justification') or '')
    return bool(AC_RE.search(vc))

def main():
    gt = json.load(open(GT))
    label = {}
    for p in gt['positives']: label[p['id']] = 'positive'
    for n in gt['hard_negatives']: label[n['id']] = 'hard_negative'
    for e in gt['easy_negatives']: label[e['id']] = 'easy_negative'

    # load checkpoints
    runs = {}  # (id,arm,rep) -> findings
    for fp in glob.glob(os.path.join(CK, '*.json')):
        name = os.path.basename(fp)[:-5]
        m = re.match(r'(\w+)_(A0|A1)_r(\d+)$', name)
        if not m:
            continue
        fid, arm, rep = m.group(1), m.group(2), int(m.group(3))
        try:
            d = json.load(open(fp))
        except Exception:
            continue
        runs[(fid, arm, rep)] = d.get('findings', []) or []

    if not runs:
        print('No checkpoints found in', CK); sys.exit(1)

    arms = ['A0', 'A1']
    fids = list(label.keys())
    reps = sorted({r for (_, _, r) in runs})

    # per-file catch table
    print('=== per-file access-control catch (k/3 reps) ===')
    print(f'{"file":4} {"label":14} {"A0":>5} {"A1":>5}')
    agg = {a: {'pos_catch': 0, 'pos_tot': 0, 'neg_fp': 0, 'neg_tot': 0} for a in arms}
    for fid in fids:
        lab = label[fid]
        row = {}
        for a in arms:
            hits = 0; tot = 0
            for r in reps:
                if (fid, a, r) in runs:
                    tot += 1
                    ac = any(is_ac(f) for f in runs[(fid, a, r)])
                    if ac:
                        hits += 1
                    if lab == 'positive':
                        agg[a]['pos_tot'] += 1; agg[a]['pos_catch'] += 1 if ac else 0
                    else:
                        agg[a]['neg_tot'] += 1; agg[a]['neg_fp'] += 1 if ac else 0
            row[a] = f'{hits}/{tot}'
        print(f'{fid:4} {lab:14} {row["A0"]:>5} {row["A1"]:>5}')

    print('\n=== aggregate ===')
    for a in arms:
        pc, pt = agg[a]['pos_catch'], agg[a]['pos_tot']
        nf, nt = agg[a]['neg_fp'], agg[a]['neg_tot']
        rec = pc / pt if pt else 0
        fpr = nf / nt if nt else 0
        print(f'{a}: recall(pos)={pc}/{pt}={rec:.2f}   FP(neg)={nf}/{nt}={fpr:.2f}')

    a0, a1 = agg['A0'], agg['A1']
    print('\n=== decision (Phase 0 gate) ===')
    rec0 = a0['pos_catch'] / max(1, a0['pos_tot'])
    rec1 = a1['pos_catch'] / max(1, a1['pos_tot'])
    fpr0 = a0['neg_fp'] / max(1, a0['neg_tot'])
    fpr1 = a1['neg_fp'] / max(1, a1['neg_tot'])
    better = rec1 > rec0 and fpr1 <= fpr0 + 1e-9
    print(f'A1 recall {rec1:.2f} vs A0 {rec0:.2f}; A1 FP {fpr1:.2f} vs A0 {fpr0:.2f}')
    print('PROCEED to Phase 1 factorial' if better else 'DO NOT proceed (lens did not help / worsened FP)')

if __name__ == '__main__':
    main()
