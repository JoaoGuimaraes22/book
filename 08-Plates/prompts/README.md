# Prompts

**`plates/` and `plate-candidates/` are HAND-AUTHORED SOURCES (author, s58).** A plate prompt is written straight into `plates/<book>/ch<NN>-<slug>.md` and is the only home for that prompt; the chapter's candidate list lives beside it at `plate-candidates/ch<NN>.md`. `08-Plates/plates/` is retired — its sheets are in `../archive/plate-sheets.md` whole.

**SO IS EVERY OTHER FILE HERE (author, s58).** `portraits/` and `full-figures/` were assembled by `scripts/build-prompts.sh` out of `../prompt-system.md` until then; the script is deleted and these files are now the source, frozen as they stood. **The reason is below in §Provenance:** six of the fourteen had already drifted into re-assemblies that will not reproduce the picture they cut, and a reference is re-cut, never edited, so propagation was buying nothing and costing that. `../prompt-system.md` keeps the shared blocks — STYLE, the adolescent AGE rung, HAIR, BASE, the templates — which a NEW prompt is assembled from by hand; each character's own rung is in its file here.

`scene-tests/` is gone: `../scene-tests.md` is the single home for those, because several carry a variant beside the adopted one.

**THE EXTENSION IS `.md` AND THE CONTENT IS NOT MARKDOWN (author ruling, s45).** These files are pasted verbatim into an image tool, so no heading, no fence and no emphasis ever goes into one.

Paste `../canon-brief.md` once at the top of the conversation first.

- `portraits/` — STYLE · AGE · HAIR (where used) · SUBJECT. Generated unanchored. `<character>-<age>.md`, bare name where `03` leaves the age unpinned.
- `full-figures/` — `Image` line · BASE · SUBJECT · closing line. Anchored to the portrait.
- `plates/` — `ch<NN>-<slug>.md`: the `Image` lines, then the scene style line (or, for a plate with no reference attached, the STYLE block's Medium paragraph), then the prompt. **Prompt text only** — no heading, no fence, no emphasis (s45); the run record lives under the plate's CHOSEN entry in `plate-candidates/`. Where the author optimised a prompt before running it, the file holds their version, as run.
- `plate-candidates/` — `ch<NN>.md`: every candidate that chapter's design found, `## CHOSEN` first with the prompt path, `## CANDIDATES` after. **The chapter quote in a CHOSEN entry is what `scripts/build-docx.py` uses to place the picture on the page** (`../README.md` §The files).
- `held/` — `<slug>.md`: **only for a picture in `../images/held/` that has no prompt anywhere else** — a run made for its own sake rather than for a plate or a reference. Prompt text only, as run; there is no candidate list and no run record, and the picture is the record. **Most of `../images/held/` is not this**: a held run of a plate block keeps its prompt in `plates/` under the plate's own name, and its record on that plate's `plate-candidates/` entry.

## Provenance — which of these produced the adopted image

**VERBATIM AS RUN.** `portraits/oss-14` (s64) · `portraits/kael-9` (author-revised) · `kael-4` · `aurelian-14` · `elarine-14` · `neris` · `neris-marked` · `vask` · `severin` · every scene-test block on `../scene-tests.md` (recovered s47 from the chat that built the scene system; `fight-kael-valeria` is missing its closing paragraph and the adopted image is chest-up with the blade-swap edit applied — see `../scene-tests.md`; `kneel-kael-aeliana` is the bare-parchment version) · `plates/book-one/ch01-vask-kael-goat` · `plates/book-one/ch01-fallen-stars` · `plates/book-one/ch06-carried-past-the-rock`.

**ASSEMBLED, NOT AS-RUN.** `portraits/kael-14` · `valeria-14` · `aeliana-15` and all three `full-figures/` — the s33 set; the fixed block was split at s34, so a re-run will not reproduce the adopted image. Every other `plates/` file: the block is what ran, but the header above it is the current system's — from s47 the scene style line rather than the portrait Medium and Colour paragraphs. `git log` has the header each one ran under.

**HELD RUNS, VERBATIM AS RUN, NO ADOPTED IMAGE.** `held/kael-the-stroke` and `held/kael-the-lock` (s68, author-authored, run outside a plate session) — the pictures are in `../images/held/` and are not pages. `../images/held/kael-post-battle.png` has no stored prompt.

**NO STORED PROMPT.** `kael-17`, `valeria-17`, `aeliana-18` — age progressions run with a changed age line that was never written down.

**`portraits/crew-leader`** (s71) — the man at the table in Ch. 49, unnamed on the page. **One deliberate trim to the STYLE block:** its *Eyes: the focal point of the picture, framed by dark lashes and dark brows* loses the brow clause, because §Portraits' grey-head instruction needs the brows told **not** to match the hair and the two would be one channel pulling both ways. **The eyes win on finish** — Elarine's axis; the overlap is deliberate and low-risk, since the two are never in a frame together. **The filename is descriptive and renames the day the page names him.**

**NO ADOPTED IMAGE** (recomputed s61 against `../images/plates/`). `plates/book-one/ch05-the-two-pails` and `ch05-the-fact-lands` (both ran; the runs are in `../images/held/`) · `ch39-the-black-in-the-iron` (ran twice; dropped, the run held) · `plates/book-one/ch07-the-temple-from-the-road` (written s61, not yet run).

**AND THE REST OF THAT LIST WAS DELETED AT s61** (author: *delete the rest of the no image prompts, they're old with lesser system*). Ten blocks written between s40 and s51 that never made an image, all of them pre-dating the register the folder now uses: `ch01-the-catch` · `ch01-telling-the-goat` · `ch01-talking-the-goat-down` · `ch02-done` · `ch08-seeing-about-the-goat` · `ch12-the-hole-through-the-tree` (ran; rejected) · `ch21-dead` (refused, then restated) · `ch22-the-arrival` (ran; rejected) · `ch26-the-good-part` and `ch26-not-kind-to-me` (dropped). **The moments are not lost and none of them was re-proposed away** — each one's design argument stays on its chapter's candidate list under `## CANDIDATES`, carrying the chapter's own words and the note that the block is gone; the blocks themselves are in `git log -p -- 08-Plates/prompts/plates/<file>.md`. `ch01-room-of-true-things` came off the list the same session by being run and adopted, and `portraits/kael-9-still` was deleted outright (author, s61).

**AND `plates/book-two/ch40-the-making-good` WAS DELETED AT s68** (author: *delete the unused prompt*). Refused three times — as adapted, after a §Injury reword, and after a second reword that took every age signal out of the text — the third refusal naming *children*. **The moment is not lost**: it is `ch40-he-did-not-scream`, the same night cropped to the face, and the design argument and the full refusal record stay on `plate-candidates/book-two/ch40.md` under `## CANDIDATES`. The block is in `git log -p -- 08-Plates/prompts/plates/book-two/ch40-the-making-good.md`.

**AND TWO ADOPTED IMAGES HAVE NO PROMPT FILE.** `ch05-hand-on-the-rock` — the author ruled no prompt is carried for it (s42) — and `ch22-the-box-from-behind`, a run kept from its neighbour's block.

**Until s47, `portraits/elarine-14` was built from the wrong block.** An alternative eye clause sat between her heading and her SUBJECT block and the build took the first fence, so the file's SUBJECT was that clause. The adopted image predates the clause and was cut from the real block; the file is correct from s47.
