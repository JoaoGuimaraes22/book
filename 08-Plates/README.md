# 08 — PLATES (self-contained)

**This folder is self-contained on purpose (author ruling, s34).** `CLAUDE.md` carries one line about it and nothing else, so the plate system costs no context in a writing session. **Everything that governs image generation lives here.** Read this file first when doing plate work; ignore the folder entirely otherwise.

**NAMED NEXT (author, s40): CH. 5.** Its pick, *past the split rock*, is the deliberate bookend to the adopted `ch01-fallen-stars` — same lights, same child, same place, and this time nobody turns his chin down. Candidates are on `plates/candidates.md`; the sheet is not written yet.

**LIGHT FROM BELOW IS PROVEN (s41).** `ch05/the-fact-lands` put a faint out-of-frame source under a face and lit it properly, so **the gate the Ch. 8 doorway was holding on Aurelian's candle is open** and the candle no longer waits on it. `ch01-fallen-stars` had shown only that an in-frame source throws nothing; the two findings are different and both stand.

**THE PLATES WANT PEOPLE AND EXPRESSIONS (author, s41).** Ruled on the two pails — a still life that rendered correctly and was not what the book wants illustrating. **An object-only plate is not a preferred plate**, however well the objects come out; prefer the candidate with faces in it. `ch01/room-of-true-things`, `ch04/the-knot`, `ch05/the-two-pails` and `ch08/the-roll` are all faceless by design, and that is now a cost each one has to be worth.

**AND CLOSE UP (author, s41): the best of these are faces and expressions, near.** Prefer the tight crop on a face doing something over the wide staging of a moment. **A close-up plate is a portrait of a MOMENT, not of a person** — it takes the chapter's own light and the chapter's own expression, and it is legal only where that chapter puts that face in that state. That is what keeps it a plate and not a second portrait: `REFERENCES SHOW THE PERSON. PLATES SHOW THE MOMENT.` still binds it. Ch. 9's `Aurelian's candle` is the named example and is exactly this shape.

**THE GREY IS SPENT FOR PLATES (author ruling, s41). A plate may show Kael's eyes.** This is the folder's ruling and the other files point at it.

- **What moved:** plates only. **The PAGE staging is unchanged** — `03` still spends the grey through other mouths, never a mirror and never self-description, and the parents still never remark on it.
- **What it costs, said plainly so no writing session is surprised by it:** for a reader who has seen the plates, the Temple mouth that was to deliver the grey now **confirms** rather than reveals. `07/planted-clues` carries that. What survives intact — arguably strengthened — is the tell that never tells: the pictures show it in every chapter and nobody in the house ever says it.
- **What did NOT move:** every other spend-state, and **Aeliana's rendering rule in particular** — her beauty may never arrive as a narrator verdict, so a close-up portrait *plate* of her stays illegal however much the programme now wants faces.



**ONE DECISION THE AUTHOR HAS NOT MADE:** the plate set is not yet consistent in finish — the doorframe is glossier than the long game, the knot and the wrist tighter than the pasture. Fine one at a time, visible in one book. `THE INK CARRIES THE CLOTH` looks like the lever. Easier settled at eight plates than at forty.

**A PLATE SESSION DOES NOT OPEN WITH A LIST OF WHAT IS OWED (author ruling, s40).** Audit notes in these files are the record of what was considered, not a queue. Nothing here is outstanding unless the author says it is; open on the work the author names.

**CONTRACT:** the reader-facing illustrations, and the method that makes them.
**ADMISSION TEST:** *does this govern how an image is generated, or record what one has depicted?*
**EVICTION:** plate sheets are accumulators and roll per book with `07`'s; the prompt systems never move — they are amended in place, never accumulated.

## The files

- `README.md` — this file. The folder's contract and its hard rules.
- `canon-brief.md` — **paste at the top of any prompting conversation.** A per-character sheet of the appearance facts that may not be violated. Written because prompts are authored in a tool that cannot see `00`, `02` or `03`, which is the single blind spot that produced every canon error of s33 and none of the craft ones. **It is a SUMMARY, not canon** — if it disagrees with a sheet, the sheet wins and the brief is the bug.
- `portrait-prompt-system.md` — the RULE for single figures: the fixed STYLE block, the per-character AGE and HAIR blocks, the SUBJECT blocks, the full-figure BASE block, and the generation method.
- `scene-prompt-system.md` — the RULE for multi-figure scenes, action, contact and aftermath.
- `images/` — split by kind (s34), because the library outgrew one flat folder:
  - `images/portraits/` — face references, `<character>-<age>.png`. Head-and-shoulders by default; **half-figure (waist-up, forearms in frame) where the character's build is part of the reference** — Severin's is the first. **A deliberate second face for the same character takes a state suffix** — `kael-9-still` is the first: same boy, same age, only the expression moved, cut because a plate needed a face its reference would not hold and no wording could override (`scene-prompt-system.md` §What the reference carries).
  - `images/full-figures/` — standing figures, `<character>-<age>-full.png`. **The `-full` suffix is kept even though the folder already says so**, so a filename stays unambiguous wherever it is pasted or cited and no two files share a name across folders.
  - `images/plates/` — the adopted plates themselves, `ch<NN>-<slug>.png`. **These are pages**, so THE PLATE FOLLOWS THE PAGE binds every one of them; the other three folders are references and it does not.
  - `images/scene-tests/` — multi-figure method tests. **References, not pages** — which is what makes Kael's unspent grey legal in them.
  - **Naming: bare `<character>[-full]` where `03` leaves the age unpinned** (s34: a number in a filename gets read as canon by the next session, and Vask's, Neris's and Severin's ages are deliberately open).
- `prompts/` — **GENERATED, never hand-edited.** Paste-ready `.txt` of every stored prompt, built from the markdown above by `scripts/build-prompts.sh` and laid out to mirror `images/` (`portraits/`, `full-figures/`, `scene-tests/`). See `prompts/README.md` for the provenance of each — which ones actually produced the adopted image and which are current-system reassemblies.
- `plates/` — the plate work itself.
  - `candidates.md` — the shortlist: moments worth drawing, chapter by chapter, before anything is composed. A rejected candidate stays on the page so the next session does not re-propose it.
  - `ch<NN>.md` — one sheet per chapter, carrying that chapter's plate prompts in fenced blocks under `### PLATE: <slug>` headings, plus what each is anchored on and what it must not show. **These are the source; `prompts/plates/` is generated from them.**

---

## THE HARD RULE: THE PLATE FOLLOWS THE PAGE

A plate may depict only what its own chapter has already put in front of the reader. This is **THE LEDGER FOLLOWS THE PAGE** pointed at pictures, and it is not a style preference — it is the seal on `00`.

Consequence, stated plainly: **an image cannot decline to answer.** Prose can withhold an eye colour for twenty chapters; a face cannot. Where the page is deliberately silent the plate answers with **FRAMING** — distance, angle, occlusion, the body turned, the detail out of frame — **never with invention.** If a moment cannot be composed without spending something unspent, the moment is wrong and a different moment is chosen.

**Live spend-state is not duplicated here.** `03` owns which details are unspent. Read the sheet, then frame.

## REFERENCES SHOW THE PERSON. PLATES SHOW THE MOMENT.

Promoted to a rule at s33 after the same question was decided three times, and it is what makes the whole library legal.

- A **REFERENCE** — a portrait, a full figure, a scene test — shows what someone IS: the face itself, the objects themselves, the body itself. It depicts no scene and is not a page, so page spend-state does not bind it.
- A **PLATE** is a moment, and THE PLATE FOLLOWS THE PAGE binds it completely.

Worked examples: **Aeliana's hair** is long and loose in her references and **must be up off the neck in a Ch. 22 plate**, per the page. Her sheet's rendering rule forbids a narrator verdict on her beauty, which makes a portrait *plate* of her illegal and a reference legal.

## SILHOUETTE SEPARATION IS A PRODUCTION RULE

`02/dueling` protects Kael's dual-blade silhouette as *distinct* from Valeria's. Both are thirteen, dark-haired and carrying two blades, so the separation is carried by everything else — and this is the worked method for any two characters who threaten to converge:

| | Kael | Valeria |
|---|---|---|
| build | hides its training | reads as function even at rest |
| stillness | invisible — trained not to move | **it warns** |
| hair | short, ordinary | well past the shoulders |
| blades | bundled on the back | one in each hand |
| cloth | undyed, light | dark |
| provenance | out of a shed, unsold | eleven generations of service |

**Tested at thumbnail size and it holds.** When two characters threaten to converge, **separate them on provenance and bearing before touching the face.** The method has since been used on Valeria and Elarine (bound vs loose, scholar vs uniform) and on Kael and Aurelian (village vs house, hacked vs groomed).

## A SUBJECT BLOCK IS NOT CANON

`00`, `02` and `03` are canon. A block that disagrees with a sheet is **a bug in the block**, always, and is corrected here rather than argued with there.

## REFERENCES ARE RE-CUT, NEVER EDITED

When the body changes on the page — scars accumulate as a record (`03/appearance-ledger`) — the reference is re-cut and the old one kept. A plate uses the reference valid at *its* chapter.
