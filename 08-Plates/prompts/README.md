# Prompts — GENERATED. Do not edit by hand.

Every file here is built by `scripts/build-prompts.sh` from the fenced blocks in `../prompt-system.md`, `../scene-tests.md` and `../plates/ch<NN>.md`. **Those are the source of truth.** To change a prompt, edit the block there and re-run the script; a hand-edited prompt file is a second home for a fact the doc already owns.

**THE EXTENSION IS `.md` AND THE CONTENT IS NOT MARKDOWN (author ruling, s45).** These files are pasted verbatim into an image tool, so no heading, no fence and no emphasis ever goes into one.

```
scripts/build-prompts.sh           # rebuild
scripts/build-prompts.sh --check   # non-zero if these files are stale
```

Paste `../canon-brief.md` once at the top of the conversation first.

- `portraits/` — STYLE · AGE · HAIR (where used) · SUBJECT. Generated unanchored. `<character>-<age>.md`, bare name where `03` leaves the age unpinned.
- `full-figures/` — `Image` line · BASE · SUBJECT · closing line. Anchored to the portrait.
- `scene-tests/` — the `### SCENE-VERBATIM:` blocks, emitted untouched.
- `plates/` — `<sheet>-<slug>.md`: the `Image` lines, then the scene style line (or, for a plate with no reference attached, the STYLE block's Medium paragraph), then the plate's own block. A `### PLATE-VERBATIM:` block is emitted untouched.

## Provenance — which of these produced the adopted image

**VERBATIM AS RUN.** `portraits/kael-9` (author-revised) · `kael-4` · `aurelian-14` · `elarine-14` · `neris` · `vask` · `severin` · every file in `scene-tests/` (recovered s47 from the chat that built the scene system; `fight-kael-valeria` is missing its closing paragraph and the adopted image is chest-up with the blade-swap edit applied — see `../scene-tests.md`; `kneel-kael-aeliana` is the bare-parchment version) · `plates/ch01-vask-kael-goat` · `plates/ch01-fallen-stars` · `plates/ch06-carried-past-the-rock`.

**ASSEMBLED, NOT AS-RUN.** `portraits/kael-14` · `valeria-14` · `aeliana-15` and all three `full-figures/` — the s33 set; the fixed block was split at s34, so a re-run will not reproduce the adopted image. Every other `plates/` file: the sheet's block is what ran, but the header above it is the current system's — from s47 the scene style line rather than the portrait Medium and Colour paragraphs. `git log` has the header each one ran under.

**NO STORED PROMPT.** `kael-17`, `valeria-17`, `aeliana-18` — age progressions run with a changed age line that was never written down.

**NO ADOPTED IMAGE.** `plates/ch01-the-catch` · `ch01-room-of-true-things` · `ch01-telling-the-goat` · `ch01-talking-the-goat-down` · `ch02-done` · `ch08-seeing-about-the-goat` · `ch12-the-hole-through-the-tree` (ran; rejected) · `portraits/kael-9-still` (not run) · **every `plates/ch28-*` through `plates/ch36-*` file** — the sixteen blocks composed at s53 for Ch. 28 to the end of Book One; none has been run, and each is as-written on its sheet.

**Until s47, `portraits/elarine-14` was built from the wrong block.** An alternative eye clause sat between her heading and her SUBJECT block and the build took the first fence, so the file's SUBJECT was that clause. The adopted image predates the clause and was cut from the real block; the file is correct from s47.
