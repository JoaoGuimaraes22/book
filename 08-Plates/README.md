# 08 — PLATES (self-contained)

Everything that governs image generation lives here; `CLAUDE.md` carries one line about it. Read this file first for plate work and ignore the folder otherwise. **A plate session does not open with a list of what is owed** — nothing here is outstanding unless the author says it is.

**CONTRACT:** the reader-facing illustrations, and the method that makes them.
**ADMISSION TEST:** *does this govern how an image is generated, or record what one has depicted?*
**EVICTION:** rules are amended in place; findings, run records and superseded rules go to `archive/` verbatim — a plate's run record under its CHOSEN entry, and a method finding to the archive once the rule it produced is written here or in `prompt-system.md`.

## Session

*Let's continue with image gen* is enough to open one; a named chapter or picture narrows it. No cold read of the writing files — this folder is self-contained.

1. Read, in order: this file · `canon-brief.md` · `prompt-system.md` · `scene-tests.md` · `prompts/plate-candidates/ch<NN>.md` for the target chapter, if it exists · the target chapter in full from `manuscript/<book>/` · the `03` sheet of each character who will be in frame, for spend-state.
2. The target is the first chapter without two plates, unless the author names one. **The revisiting programme** (author, s61) — a second pass over chapters that already have their two, one extra plate each, ten chapters to a session, the pick handed back — **is done for Ch. 1–36**; Ch. 37–40 is what is left of it and is not started until the author opens one. A revisiting session reads the chapter and its candidate list the way a first pass does, and its extras go in the same `## CHOSEN` list.
3. Design from the scene: propose the moment and the crop for each plate in a few lines and wait for the author's pick. Then write **every** candidate found into `prompts/plate-candidates/ch<NN>.md` — `## CHOSEN` first, `## CANDIDATES` after — write each chosen prompt into `prompts/plates/ch<NN>-<slug>.md` from the template, and hand over that path and the references to attach. One conversation per block, the brief pasted at the top of each (`prompt-system.md`).
4. After the run: read the picture against the prompt, and adopt only on the author's word — copy the image to `images/plates/`, mark the CHOSEN entry `adopted`, commit, push. What landed and what drifted goes under that entry as sub-bullets — never into the prompt file, which is pasted verbatim and carries no markdown (s45).

## The files

- `canon-brief.md` — **the paste**: the appearance facts per character, plain text, at the top of every prompting conversation — in native image generation the conversation is the prompt, so every line in it is in every picture's context (author, s59). Only what is on the person in every picture — colouring, build, bone, bearing, permanent marks — and nothing addressed to the writer: no fence, no provenance, no spend-state. Armament, garment, grime, damage, hair styling and any state a chapter has put on a body are authored per picture out of the chapter and `03`; a character reads by where they are and what they are doing, not by their house (`02/geography.md`). `03` wins where they disagree, and the disagreement is the brief's bug. The brief before the s58 cut is `archive/canon-brief-s58.md`.
- `prompt-system.md` — **the rule, and the shared components only**: STYLE, the AGE rungs, HAIR, the half-figure override, the SUBJECT template, BASE, the closing line, the scene style line, the plate template, the instruments, the pass before a run, and the tool's limits. No character's own prompt is in it (author, s58): it says what each reference is and points at its file.
- `scene-tests.md` — the scene-test prompts as run, under `### SCENE-VERBATIM:` headings, and their single home: several carry a variant beside the adopted one, which is the value of the sheet. The specimens the template is cut from.
- `prompts/` — **every file in it is hand-authored and is the source** (author, s58); nothing is generated and there is no build script. `plates/ch<NN>-<slug>.md`, `portraits/<character>-<age>.md`, `full-figures/<character>-<age>-full.md`: prompt text only — no heading, no fence, no emphasis (s45). `prompts/README.md` carries the provenance of each file.
- `prompts/plate-candidates/ch<NN>.md` — one per chapter: **every** candidate the chapter's design found. `## CHOSEN` first — a short description carrying the chapter's own words, pointing at the prompt, the run record as sub-bullets — then `## CANDIDATES`, the rest, with why each was passed over or blocked; a rejected candidate stays so it is not re-proposed. **The chapter quote in a CHOSEN entry is load-bearing:** `scripts/build-docx.py` finds it in the manuscript to decide where the picture sits on the page, and an entry without one leaves its plate unplaced unless the script's `MANUAL` table pins it.
- `images/` — `portraits/` (face references, `<character>-<age>.png`; bare name where `03` leaves the age unpinned; a deliberate second face takes a state suffix) · `full-figures/` (`<character>-<age>-full.png`) · `plates/` (the adopted plates, `ch<NN>-<slug>.png` — **these are pages**) · `scene-tests/` (references, not pages) · `held/` (runs kept for a decision, named for the prompt that made them; not pages).
- `archive/` — `findings.md`, the four governing docs as they stood before s47 (sheets written before s47 cite `scene-prompt-system.md §…` and `portrait-prompt-system.md §…`, which are there under their original headings) · `prompt-system-s66.md` and `readme-s66.md`, the two as they stood before the s66 consolidation, with every finding, count and reversal of s47–s65 · `plate-sheets.md`, the `plates/` sheets retired at s58 (author), whole — design arguments, adoption records, drift counts, and the worked specimens `prompt-system.md` cites · `canon-brief-s58.md`.

## Hard rules

**THE PLATE FOLLOWS THE PAGE.** A plate depicts only what its own chapter has already put in front of the reader — THE LEDGER FOLLOWS THE PAGE pointed at pictures, and the seal on `00`. An image cannot decline to answer, so where the page is silent the plate answers with framing — distance, angle, occlusion, the body turned, the detail out of frame — never with invention. If a moment cannot be composed without spending something unspent, the moment is wrong and a different one is chosen. `03` owns spend-state: read the sheet, then frame. Unspent canon is the only thing that blocks a moment — not refusal risk (§Standing rulings), and not a missing face, which is framed out (`prompt-system.md` §A face with no reference).

**REFERENCES SHOW THE PERSON. PLATES SHOW THE MOMENT.** A reference — portrait, full figure, scene test — shows what someone is, depicts no scene, and page spend-state does not bind it; a plate is a moment and the rule above binds it completely (Aeliana's hair is loose in her references and up off the neck in a Ch. 22 plate). **No picture is forbidden here** (author, s65: *these are just illustrations*): a close-up, a face filling the frame, a plate that is a portrait in everything but its occasion needs no clearance — what the rule asks is that the state on the face comes from the chapter. The one page fact that needs care is Aeliana's: her beauty reaches the page as what a room does in her presence and as Kael's instruments failing, never as a narrator verdict (`03`), so a picture built to be about how beautiful she is would be saying a thing the book has not said.

**A SUBJECT BLOCK IS NOT CANON.** `00`, `02` and `03` are. A block that disagrees with a sheet is a bug in the block, corrected here rather than argued with there.

**REFERENCES ARE RE-CUT, NEVER EDITED.** When the body changes on the page, cut a new reference and keep the old; a plate uses the reference valid at its chapter.

**SILHOUETTE SEPARATION IS A PRODUCTION RULE.** Two characters who threaten to converge are separated on provenance and bearing before the face is touched. Tested at thumbnail size on Kael and Valeria — both thirteen, dark-haired, carrying two blades — and since used on Valeria and Elarine (bound vs loose, scholar vs uniform) and on Kael and Aurelian (village vs house, hacked vs groomed):

| | Kael | Valeria |
|---|---|---|
| build | hides its training | reads as function even at rest |
| stillness | invisible — trained not to move | **it warns** |
| hair | short, ordinary | well past the shoulders |
| blades | bundled on the back | one in each hand |
| cloth | undyed, light | dark |
| provenance | out of a shed, unsold | eleven generations of service |

## Standing rulings

- **Every plate anchors on the fourteen-year-old references** — `kael-14`, `elarine-14`, `valeria-14`, `aurelian-14`, `aeliana-15` — for any chapter (s44): one consistent face across the book over age-accuracy in any single picture; age is written into the block or the picture will be fourteen. `kael-4` and `kael-9` stay in the library and are not the default.
- **The programme is chapter order, two plates per chapter** (s42); `images/plates/` answers which chapter is next. The revisiting programme is §Session.
- **The default plate is a chest-up with a face doing something** (s42, s45); a hand-and-object crop has to earn itself; a faceless candidate is priced, not disqualified (s43). **The set is short of action and of close range, and that is the thing to correct** (author, s65: *i feel like we have little action shots and closeups … those are really cool*): an action plate is budgeted at several runs and a close-up is a portrait of a moment, in the chapter's own light and expression — both on `prompt-system.md`.
- **The scene-test register is the plate's starting shape** (author, s47: *my favourite compositions, colouring, beauty are the images in scene tests*), and the register starts at s47 — the folder before it is history rather than precedent, and an instrument is argued from a post-register run, never from a pre-register failure (author, s51). Instruments are reached for when the picture needs one and never carried by habit.
- **The frame is named as one of the tool's ratios, and 3:4 is the default** (author, s59, s60, s63) — `prompt-system.md` §The frame. Camera vocabulary is not banned (author, s59).
- **A hard moment is not passed over for fear of a refusal** (author, s60: *those are the best images, we can always do them, eventually*): write the block, run it, reword once if refused, and take a second refusal as the answer for that attempt.
- **The pregnancy is framed out, never drawn** (author, s51: *probably should have avoided illustrations with Neris' body showing — it is very weird with the guidelines and pregnancy*). She is pregnant from Ch. 21 to the end of Book One, and a plate carries it in posture, cloth and crop — no clause naming the term, the carry or the shape, and nothing below her collar authored where the frame can hold it. `ch21/the-nine-things` predates the ruling and stands.
- **Colour is named positively on the objects that have it, never banned** (s42, s45).
- **Kael's grey is spent for plates** (s42): a plate may show his eyes at full strength. It stays unspent on the page, which is a prose rule.
- **The references are set in the book, and that makes them pages** (author, s55: *sprinkle in the different portraits we have too*). `scripts/build-docx.py` places ten `images/portraits/` references at each character's entrance, at 2.9in against a plate's 4.6in; its `PORTRAITS` table holds which and where, and why `aeliana-15` sits at Ch. 24 and not at her Ch. 22 entrance (the reference wears her hair loose, Ch. 22 has it up, Ch. 24 says *Her hair was down.*). `kael-17`, `valeria-17` and `aeliana-18` are Book Two+ states and out; the full figures and the scene tests are unused.
- **The prompt is the source, everywhere** (author, s58): one candidate list per chapter, one file per prompt, one file per reference, nothing generated. Where the author optimised a prompt before running it, the file holds their version, as run.
- **Findings are not automatically rules** (author, s42: *no need to be a rule — case by case we do adjust*). Record what happened under the CHOSEN entry; promote it to `prompt-system.md` only when it has failed the same way, with the same cause, more than once and the correction was wanted every time. The pictures are judged by looking at them.
- **Never design "the coat."** It is the book's metaphor for Kael's concealment, not a garment — and `coat` as a noun returns a frock coat.
- **Valeria is never a one-sword identity.** Twin blades, both hands full, is what she is. The fence is against one sword and not against a count in a given frame: where a hand is occupied with something else, a plate may leave the second blade out of frame or undrawn (author, s51).
- **The Aeliana pictures are the author's favourites in the set** (author, s53: *aeliana pics are the best*) — a taste note and not a programme: it does not license drawing her more often, and the two that earned it (`ch33/the-lamp`, `ch34/the-elbow`) are pictures of her doing a job with her hands.
- **Finish is not yet consistent across the set** and the author has not settled it. The controlled pair is `ch08-the-one-who-did-not-laugh` / `-cold`; new blocks reserve bare paper by name and protect the ink from a general softening, and leave hue per picture (s43).

## Pictures that stand as drawn — do not re-raise

None re-cut, none re-run, `03` and the page unchanged:

- `vask.png` carries no temple-grey; `neris.png` reads early thirties (s43, s44).
- `neris-marked.png` reads about a decade older than `neris.png`, and that is wanted (author, s60: *i like it reading a bit older. she has taken a big toll*) — a reference is exempt from page spend-state and may carry what a plate could not.
- `ch24/turn-him-toward-the-lamp` draws the wrist-to-elbow burn two chapters before Ch. 26 gives it to him — `canon-brief.md`'s fault, corrected against `03` at s51 (author, s51).
- `ch26/aftermath` carries a stone courtyard, a charcoal tunic and no burn (author, s51).
- `ch30/the-white-in-all-of-him` has the lightning coming off him — Ch. 30 forbids it in the character's own words and Ch. 33 describes it exactly, so the picture is true of the wrong minute (author, s53: *its good*).
- The four s53 plates, against the drift list on each (author, s53: *its fine*): the loose crop, the age reading above thirteen where no rung was written, a small mark on a face falling below the scale at which it renders, and the boy's cloth coming back ragged where the block said mended. Evidence, not corrections owed; the crop and the rung have since been answered on `prompt-system.md`.
- `ch35/one-knee-at-the-mast` carries a burn on Valeria's left forearm that the page does not give her (author, s65) — the block's dried red rendered in the language of the facial burn beside it.
