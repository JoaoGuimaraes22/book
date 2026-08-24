# Prompts — GENERATED. Do not edit by hand.

Every `.txt` here is built by `scripts/build-prompts.sh` from the fenced blocks in `../portrait-prompt-system.md` and `../scene-prompt-system.md`. **Those markdown files are the source of truth.** To change a prompt, edit the block there and re-run the script; a hand-edited `.txt` is a second home for a fact the doc already owns, which is exactly the drift that produced the s30 phantoms.

```
scripts/build-prompts.sh           # rebuild
scripts/build-prompts.sh --check   # non-zero if these files are stale
```

Each file is complete and paste-ready in order: **STYLE · AGE · HAIR (where used) · SUBJECT**, or **BASE · SUBJECT** for full figures. Paste `../canon-brief.md` once at the top of the conversation first.

## Provenance — which of these actually produced the adopted image

**VERBATIM AS RUN (s34).** These are the prompts that made the images now in `../images/`:
`portraits/aurelian-14` · `portraits/elarine-14` · `portraits/neris` · `portraits/vask` · `portraits/severin` · `scene-tests/quartet-conversation` · `portraits/kael-4` (s36, first run, adopted)

**ASSEMBLED, NOT AS-RUN (the s33 set).** `portraits/kael-14` · `portraits/valeria-14` · `portraits/aeliana-15` and all three `full-figures/`. The SUBJECT blocks are exactly what ran, but **the fixed block changed at s34** — the old one carried the cheek clause, an inline age paragraph and the hair line, and it was split into STYLE / AGE / HAIR. **Re-running these will not reproduce the adopted images.** They are the current-system version of those characters, which is what a fresh run should use.

**NO STORED PROMPT, and it cannot be recovered.** `kael-17`, `valeria-17`, `aeliana-18`. Those age progressions were made by running the same SUBJECT block with a changed age line and the exact wording was never written down. Re-cutting them means writing a new age block.

**NOT YET RUN.** `plates/ch01-fallen-stars` · `plates/ch01-the-catch` · `plates/ch01-room-of-true-things`.

## Layout

Mirrors `../images/`:

- `portraits/` — single figure, face reference. `<character>-<age>.txt`, bare name where `03` leaves the age unpinned.
- `full-figures/` — anchored to an adopted portrait; extends a face to a standing figure.
- `scene-tests/` — multi-figure, anchored to the full-body sheets.
- `plates/` — chapter plates, `<sheet>-<slug>.txt`, built from the `### PLATE:` blocks in `../plates/ch<NN>.md`. Each is the house Medium and Colour paragraphs (sliced from the fixed STYLE block) plus the plate's own block, which carries its own composition, lighting and framing.
