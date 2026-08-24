# Novel Project — Working Protocol

A fiction project. The files are the sole source of truth; chat is disposable scaffolding; `git log` is the history of what changed.

## Files
Every file has a CONTRACT, an ADMISSION TEST and an EVICTION PATH; content that fails its test moves. **06 owns the RULE (how prose is written); 07 owns the STATE (what is spent, what may not be contradicted).**

- `00-Author-Canon-SEALED.md` — SEALED author canon: truths of the story and things the author wants to hit, not yet on the page. Test: *a truth, or a thing to hit — destinations, events, ideas; not how, when or in what order* unless deliberately fixed. **Author-ratified only:** never add to, cut from or reinterpret it without the author saying so. Edited in place, no `[SUPERSEDED]` tagging. Eviction: staging rules → 06, do-not-contradict state → 07, dead notes → archive.
- `01-Premise-and-Pitch.md` — the foundation. Test: *still true if the plot changed?* Rarely changes.
- `02-World-Bible/` — the world, one topic file each. Test: *true regardless of who is on the page?* Owns the word-registers. Eviction: superseded canon → archive.
- `03-Character-Bible/` — one sheet per character: Glance / STATIC / DYNAMIC / FORWARD, appearance inline. Test: *true of a person?* DYNAMIC is STANDING STATE — present tense, one line per fact, no chapter beats (beats live in 07/chapter-records). No chapter stamps anywhere; `git log` says whether a sheet is current.
- `04-Outline.md` — the forward plan. Test: *not yet written?* Spent beats keep a one-line pin (the numbers are addresses cited from other files); their text rolls to `archive/outline-archive.md`. Unplaced material → §Queued threads.
- `05-Continuity-Log.md` — live state. Test: *false in ten sessions?* Pointer-style. Caps: §STATUS two blocks of ≤4 lines (the record is `archive/session-log.md` §SESSION N); no arc retelling (07 and the manuscript own it); baselines are numbers only.
- `06-Style-Sheet.md` — how the prose is written. Test: *governs sentences regardless of what has happened?* Amended in place; spend state → 07, vocabulary → 02.
- `07-Story-Ledger/` — do-not-contradict canon. Test: *could a future page contradict this?* LAW CORE (timeline, standing-rules, magic-snapshot, open-threads, established-facts) is stable. `planted-clues.md` is design-time (`scripts/clues.sh`). ACCUMULATORS: `chapter-records.md` (the current Part; earlier Parts in `chapter-records-parts-1-3.md`, rolled at each Part close) and `protected-phrasings.md` (script-parsed, never cold-read).
- `08-Plates/` — reader-facing illustrations; SELF-CONTAINED — `08-Plates/README.md` governs it. Never a writing session's concern.
- `archive/` — history: session records, rolled text, probes. Append-only; spot-read.
- `manuscript/book-one/NN-Title.md` — the chapters.
- `TOOLS.md` — the scripts and `nlm`.

Not cold-read: `index.md` (TOC), `changelog.md` (written only when a change's reason will not survive in the file it changed), the archive, 08.

## Session

**Open**
1. `scripts/verify.sh` (clean tree; baselines) and `scripts/check-quotes.sh` (must read 0). Anything unexplained: stop and report before reading further.
2. Cold read — flag anything that itches BEFORE working; it is a free continuity audit.
   - **Every session:** CLAUDE.md · 05 · 04 · 06 · 00 · 01 · every 02 topic file · every 03 sheet · the 07 law core · the last two chapters in full from `manuscript/` · `07/chapter-records.md`, skipping the chapters read in full.
   - **Design-time (a new chapter):** `scripts/clues.sh <keyword>` for what the target owes; `07/planted-clues.md` whole only at a Part boundary; spot-read any older chapter or record the design rhymes against.
   - **On demand:** `07/chapter-records-parts-1-3.md`, the archive, `TOOLS.md`, 08.
3. The target is 05 §NEXT TARGET. Never improvise one unless asked.

**Work**
4. New chapter: design argument → chapter shape → WAIT for approval → draft.
5. Revision: chapter by chapter, interactively — observations and trim candidates for the chapter in hand, the author's own edits, then the next; never bulk all-chapter tables. Flat-or-leaner against 05's baselines. `scripts/check-echoes.sh` on every new or revised chapter (every hit deliberate); tic counts per 06 §Model-Tic.
6. Draft → react/revise while hot → approve → write every decision into the files. Discussion is not an edit: when the author raises a question about drafted prose, propose wording in chat and wait for the ruling.
7. Ceiling: two chapters of new prose per session (three only if structurally simple); heavy-canon chapters get a session of their own.

**Close**
8. Commit (short imperative subject) + push. Update 05's baselines after any prose change; `scripts/sync-reader-notebook.sh` after prose changes.
9. Hygiene: 05 back to its caps; newly spent 04 beats to pins; 03 DYNAMIC refreshed for touched characters (standing state only); a session record appended to `archive/session-log.md`. After any bullet-append in a bible, confirm the following header survived.

## Hard rules (author ratification to change)
- **00 is author-ratified only** (above).
- **NOTHING LIVES IN CHAT.** Every decision, rule or promising idea is in a file and committed before the session ends.
- **Records are records.** Session logs and the archive are appended, never rewritten.
- **THE LEDGER FOLLOWS THE PAGE.** Quotation marks claim the words are on a page: quote out of the committed chapter, never from a draft, a design argument or another ledger. Text that is not page canon (rulings, cut lines, paraphrase) goes unquoted, in italics. `scripts/check-quotes.sh` is the instrument; confirm each hit with `git log -S` before calling it a phantom.
- **ONE FACT, ONE HOME.** If a script can compute it, do not type it; if another file owns it, point — do not copy. Before adding any counter, stamp, tally or summary, name the file that already owns the fact; if one does, do not add it.
- **ZERO-LOSS for doc-system work.** A restructure moves content verbatim, then verifies: every old line found in its new home, and a parity run of every script that parses the file. Report the verification, don't assert it.

## Standing rules
- Git is the safety net; cut freely — restoration is one edit.
- The reader-copy notebook (`nlm`) holds chapters only, never canon; its answers are reader-inference evidence, never canon. Details in `TOOLS.md`.
- Plan by destination, not itinerary: unspent material is *what is owed before Part N closes*, never a chapter-number assignment.
- The author's craft notes calibrate the ear on the passage in hand; they are not new 06 rules and trigger no retro pass. Ask before any retroactive pass; assume no.
- When an author idea collides with a hard rule, name the collision, price what spending it costs, and propose the tightest scoped version — never refuse, never silently widen.
