# Novel Project — Working Protocol

A fiction project. The files are the sole source of truth; chat is disposable scaffolding; `git log` is the history of what changed.

## Files
Every file has a CONTRACT, an ADMISSION TEST and an EVICTION PATH; content that fails its test moves. **06 owns the RULE (how prose is written); 07 owns the STATE (what is spent, what may not be contradicted).**

- `00-Author-Canon-SEALED.md` — THE VAULT: every truth not yet on a page, every destination, every reserved beat. **Not read at open or design or draft time; opened only when the author says *check it*.** The author carries the future canon; Claude designs from the scene and is meant to arrive at different ideas — **the fence is about WHEN it is read, not about who may write in it** (author, s49: *I don't like spoiling you, it makes you less creative*). **CONTENT is author-ratified: new destination canon, new sealed truths and new reserved beats are the author's alone.** **MAINTENANCE IS CLAUDE'S, AT THE CLOSE, AFTER THE DRAFT IS LANDED** — sweeping spoilers in out of the live files, and syncing beats and spend-state the author has already ruled. Never open it to design from. Its §FROM THE LIVE FILES holds, verbatim, every spoiler line swept out of 02/03/04/06/07 at s46; spent design canon is in `archive/author-canon-spent.md`.
- `01-Premise-and-Pitch.md` — the foundation. Test: *still true if the plot changed?* Rarely changes.
- `02-World-Bible/` — the world, one topic file each. Test: *true regardless of who is on the page?* Owns the word-registers. Eviction: superseded canon → archive.
- `03-Character-Bible/` — one sheet per character: Glance / STATIC / DYNAMIC / FORWARD, appearance inline. Test: *true of a person?* DYNAMIC is STANDING STATE — present tense, one line per fact, no chapter beats (beats live in 07/chapter-records). No chapter stamps anywhere; `git log` says whether a sheet is current.
- `04-Outline.md` — the forward plan. Test: *not yet written?* Spent beats keep a one-line pin (the numbers are addresses cited from other files); their text rolls to `archive/outline-archive.md`. Unplaced material → §Queued threads.
- `05-Continuity-Log.md` — live state. Test: *false in ten sessions?* Pointer-style. Caps: §STATUS two blocks of ≤4 lines (the record is `archive/session-log.md` §SESSION N); no arc retelling (07 and the manuscript own it); baselines are numbers only.
- `06-Style-Sheet.md` — how the prose is written. Test: *governs sentences regardless of what has happened?* Amended in place; spend state → 07, vocabulary → 02.
- `07-Story-Ledger/` — do-not-contradict canon. Test: *could a future page contradict this?* LAW CORE (timeline, standing-rules, magic-snapshot, open-threads, established-facts) is stable. `planted-clues.md` is the plant-check — what the page has done with each plant, and what it leaves open (`scripts/clues.sh`, run after a scene is designed, never before). ACCUMULATORS: `chapter-records.md` (the current Part; a closed Part rolls to a file of its own — `chapter-records-parts-1-3.md`, `chapter-records-part-4.md` — never consolidated per book; **summary + FACTS only** — rulings, provenance and metrics go to the archive record) and `protected-phrasings.md` (script-parsed, never cold-read).
- `08-Plates/` — reader-facing illustrations; SELF-CONTAINED — `08-Plates/README.md` governs it. Never a writing session's concern; **a plate session (*let's continue with image gen*) opens on its README §Session and skips the cold read.**
- `archive/` — history: session records, rolled text, probes. Append-only; spot-read.
- `manuscript/<book>/NN-Title.md` — the chapters. The numbering runs on across books: Book Two opens at Ch. 37, in `manuscript/book-two/` (author, s52).
- `build/` — DERIVED but TRACKED (author, s55): the assembled book, prose and illustrated (`build-manuscript.sh`, `build-docx.py`). Built at a book's finish, not per session, so the history stays thin; `build/plates-jpg/` is a cache and stays ignored. **Not read unless the author asks** (author, s55) — nothing is decided here, and the manuscript is the source. Regenerate rather than inspect; `TOOLS.md` owns the scripts.
- `TOOLS.md` — the scripts and `nlm`.

Not cold-read: the `index.md` TOCs in 02/03/07, `README.md` and `LICENSE` (the public front door — the repo is public under CC BY-SA 4.0), the archive, 08, `build/`. There are no changelogs: `git log` and the session records carry what changed and why.

## Session

**Open**
1. `scripts/verify.sh` — clean tree, baselines, and the phantom audit (0 quoted spans off the page). Anything unexplained: stop and report before reading further.
2. Cold read — flag anything that itches BEFORE working; it is a free continuity audit.
   - **Every session:** CLAUDE.md · 05 · 04 · 06 · 01 · every 02 topic file · every 03 sheet · the 07 law core · **when drafting:** the last two chapters in full from `manuscript/` (cadence is calibrated locally; no summary carries it) · **when revising:** the chapter in hand and its neighbours in full · `07/chapter-records.md`, skipping the chapters read in full.
   - **Design-time (a new chapter):** the scene first; then `scripts/clues.sh <keyword>` on the things the scene touches, for what the page already holds on them (its payoff column is a spoiler and stays behind `-p`, on request); `07/planted-clues.md` is never read whole; spot-read any older chapter or record the design rhymes against.
   - **On demand:** the rolled chapter records (`07/chapter-records-parts-1-3.md`, `07/chapter-records-part-4.md`), the archive, `TOOLS.md`, 08.
3. The target is 05 §NEXT TARGET. Never improvise one unless asked.

**Work**
4. New chapter: **from the scene first, the files second** (the owed-list is a footnote, never the argument — author, s46) → design argument → chapter shape → WAIT for approval → draft.
5. Revision: chapter by chapter, interactively — observations and trim candidates for the chapter in hand, the author's own edits, then the next; never bulk all-chapter tables. Flat-or-leaner against 05's baselines. `scripts/check-echoes.sh` on every new or revised chapter (a hit is a CUT unless argued like a heavy beat; the record does not log echoes); tic counts per 06 §What gets cut.
6. Draft → **commit the draft at once** (local; the push waits for the close) → react/revise while hot → approve → write every decision into the files. Committing first means the author's edits arrive as `git diff` instead of a re-read — and a diff catches an edit that silently drops a planted beat, which a re-read does not. Discussion is not an edit: when the author raises a question about drafted prose, propose wording in chat and wait for the ruling. **`git diff <file>` before every `git add` of a file the author may be editing (author, s58):** the diff is read as the author's pass and named in the commit; a blind `git add` of a whole file commits their edits unseen, which is the one thing committing early exists to prevent.

**Close**
7. Commit (short imperative subject) + push. Update 05's baselines after any prose change; `scripts/sync-reader-notebook.sh` after prose changes.
8. Hygiene: 05 back to its caps; newly spent 04 beats to pins; 03 DYNAMIC refreshed for touched characters (standing state only); a session record appended to `archive/session-log.md`. After any bullet-append in a bible, confirm the following header survived.
9. **THE CLOSE WRITES EACH NEW FACT ONCE (s76).** The temptation at a close is to write the chapter into every file that mentions its topic; that is how the cold read reached 127k words with one fact in nine homes. **`07/chapter-records.md` is the per-chapter home.** 03 takes standing state only, 04 takes a one-line pin, 07's law core takes only what NO single chapter owns, 05 takes pointers, and `open-threads.md` is maintained by REMOVAL — a thread answered is a thread deleted. **If a sentence would be true in two of those files, it belongs in one and the other points at it.**

## Hard rules (author ratification to change)
- **00 is author-ratified for its CONTENT, and Claude maintains it at the close** (above): never read at open, design or draft time; edited only after the draft is landed, and only to carry rulings that already exist. **SPOILERS LIVE IN 00 ONLY:** anything not on a page and not in 01 that concerns the future or a hidden truth goes to 00 and is not read at open or draft time; the live files keep what the page HAS, never the truth behind it. Sweep at every close.
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
- **FACTS, NOT PROHIBITIONS (author, s54).** The state files (02, 03, 07, 04) record what the page HAS and what is open — never what a future page may not do. A close writes state (*none of the three was panic*), not a rule aimed at Claude (*never write him panicking*); the author's own rulings carry their *(author)* tag and are the only prohibitions. Sealed truths stay in 00, which the author carries. At design time Claude brings its own version of the scene before reading anything on it, then hears the author's, and the two are combined. 06 is the rule side: it holds how prose is written and nothing a future page may not do — its content fences went to 00 at s56 (author).
