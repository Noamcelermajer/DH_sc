# Other-branch findings — 2026-10-05

Compared current `bbc1e78` with engine branch `e6da25b`.

- **Useful:** camera/frustum producers, GLES pass-state mapping, corrected mesh-cache ownership, and BRES reader/block research. Imported 23 evidence/tool files.
- **Already retained:** Noam main/continuation branches. Adam native-textures remains at the imported baseline.
- **Source fixes:** corrected five audio chunk tags; recovered camera planes, culling and visibility callers. Host tests pass; native wiring remains open. The reader-context helper is still untested.
- **New Adam main `c3ae7973`:** player/HUD, skill/loot owners, menu and loader snapshots. Reused GFNT/viewport source: 8,532/5,200 host comparisons pass with sanitizers. Native skill/loot integration and full enemy pursuit remain open. [Import pins](../reports/branch-audit-2026-10-05/adam-ui-source-import.json).
- **DH2Work:** newer commits add seven startup/roadmap documents; no newer game/engine source changes in that delta.

Verification: 1,733 recorded ELF hashes match (1,430 distinct ranges). All 2,901 historical BDAE rows and 2,577,206 fixup classifications reproduce locally. The local directory's three extra BDAEs are listed separately. Five Python bytecode files were excluded. These are research checks, not completed gameplay.

[Import ledger](../reports/branch-audit-2026-10-05/selective-import.json) · [ELF checks](../reports/branch-audit-2026-10-05/engine-branch-evidence.json) · [Corpus replay](../reports/branch-audit-2026-10-05/resource-corpus-replay.json) · [Project checklist](PROJECT-CHECKLIST.md)
