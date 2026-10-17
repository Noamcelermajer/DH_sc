#!/usr/bin/env python3
"""Script override layer of the IMPROVEMENTS branch (reports/improvements/CHANGES.md).

port/lua-overrides/manifest.txt lists   <path under files/>  <sha256 of the original>  <sha256 of the override>  <switch>
Overrides live at port/lua-overrides/<path>.luac next to their readable source <path>.lua (the game's .luac files are plain
Lua text, so "compiling" is a copy; `build` does it and checks the .lua parses with the same text).

  lua_overrides.py verify                 sources vs originals (recovered/scripts/original): print the unified diffs, check hashes
  lua_overrides.py build                  .lua -> .luac, rewrite the override hash column
  lua_overrides.py apply <files-dir>      copy the overrides over <files-dir>/<path> (keeps the original as <path>.orig), only when the
                                          file in <files-dir> still has the manifest's original hash (or already the override)
  lua_overrides.py remove <files-dir>     put the originals back
Disabling: do not call `apply`, or call `remove`. The Android DataSetup does the same with the marker file files/dh2_no_overrides.
"""
import hashlib, os, shutil, sys, difflib

ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", ".."))
OVR = os.path.join(ROOT, "port", "lua-overrides")
ORIG = os.path.join(ROOT, "recovered", "scripts", "original")
MAN = os.path.join(OVR, "manifest.txt")


def sha(p):
    return hashlib.sha256(open(p, "rb").read()).hexdigest()


def rows():
    out = []
    for l in open(MAN, encoding="utf-8").read().splitlines():
        if l.strip() and not l.startswith("#"):
            out.append(l.split("\t"))
    return out


def write_rows(rs):
    head = [l for l in open(MAN, encoding="utf-8").read().splitlines() if l.startswith("#")]
    open(MAN, "w", encoding="utf-8", newline="\n").write("\n".join(head + ["\t".join(r) for r in rs]) + "\n")


def lua_of(path):
    return os.path.join(OVR, path[:-5] + ".lua")


def cmd_verify():
    ok = True
    for path, base, ovr, *_ in rows():
        o = os.path.join(ORIG, path)
        if sha(o) != base:
            print("BASE HASH MISMATCH", path); ok = False
        if sha(os.path.join(OVR, path)) != ovr:
            print("OVERRIDE HASH MISMATCH", path); ok = False
        if open(lua_of(path), "rb").read() != open(os.path.join(OVR, path), "rb").read():
            print(".lua and .luac differ", path); ok = False
        a = open(o, "rb").read().decode("latin1").splitlines()
        b = open(lua_of(path), "rb").read().decode("latin1").splitlines()
        print("".join(l + "\n" for l in difflib.unified_diff(a, b, "original/" + path, "override/" + path, lineterm="", n=2)))
    print("OK" if ok else "FAILED")
    return 0 if ok else 1


def cmd_build():
    rs = rows()
    for r in rs:
        shutil.copyfile(lua_of(r[0]), os.path.join(OVR, r[0]))
        r[2] = sha(os.path.join(OVR, r[0]))
    write_rows(rs)
    return 0


def cmd_apply(files, remove=False):
    for path, base, ovr, *_ in rows():
        dst = os.path.join(files, path)
        bak = dst + ".orig"
        cur = sha(dst) if os.path.exists(dst) else None
        if remove:
            if os.path.exists(bak):
                shutil.move(bak, dst); print("restored", path)
            continue
        if cur == ovr:
            print("already applied", path); continue
        if cur != base:
            print("SKIP (file is neither the known original nor the override)", path); continue
        shutil.copyfile(dst, bak)
        shutil.copyfile(os.path.join(OVR, path), dst)
        print("applied", path)
    return 0


if __name__ == "__main__":
    c = sys.argv[1] if len(sys.argv) > 1 else ""
    if c == "verify": sys.exit(cmd_verify())
    if c == "build": sys.exit(cmd_build())
    if c in ("apply", "remove") and len(sys.argv) > 2: sys.exit(cmd_apply(sys.argv[2], c == "remove"))
    print(__doc__); sys.exit(2)
