# Novel Project — Working Protocol

This is a fiction project. The document system is the sole source of truth; chat history is disposable and git history is the authority on what changed.

## Files
Every file has a CONTRACT (what it holds), an ADMISSION TEST, and a named EVICTION PATH. Content that fails its file's test moves; it does not accumulate in place. The governing split: **06 owns the RULE (how prose is written, invariant); 07 owns the STATE (what has been spent, what may not be contradicted).** When a rule and its spend-ledger describe the same subject, they belong in different files.

- `00-Author-Canon-SEALED.md` = SEALED author canon — truths of the story, and the things the author wants to hit, that may NOT yet be revealed on the page. Test (s32): *is this a truth, or a thing to hit?* Destinations, events, ideas — **not how, not when, not in what order** unless deliberately fixed. Never contradict; reveal slowly. Edited in place, author-ratified only (s32: append-only dropped). EVICTION (new, s32, one pass OWED): staging rules roll to 06, do-not-contradict state to 07, dead design notes to the archive.
- `01-Premise-and-Pitch.md` = THE FOUNDATION — premise, pitch, the shape of the whole. Test: *would this still be true if the plot changed?* Rarely changes; no eviction path needed.
- `02-World-Bible/` = THE WORLD (topic files: magic, factions, geography, curriculum, lexicon, naming, temple, dueling, bloodline, open-questions). Test: *is this true of the world regardless of who is on the page?* Owns the positive word-registers. `index.md` = pure TOC, no facts. EVICTION: one changelog line per session; superseded canon rolls to the archive.
- `03-Character-Bible/` = THE PEOPLE (one file per character + `appearance-ledger.md`). Test: *is this true of a person?* Sheet format: Glance / STATIC / DYNAMIC / FORWARD. `index.md` = pure TOC, no facts. EVICTION: DYNAMIC refreshes at each close; chapter history belongs in 07, never here; one changelog line per session.
- `04-Outline.md` = THE FORWARD PLAN. Test: *is this not yet written?* Spent beats keep a one-line pin only (the numbers are load-bearing addresses cited from 00/02/03/05/07). EVICTION: at each chapter commit the beat collapses to its pin and its text rolls to `archive/outline-archive.md`. Unspent material with no fixed beat lives in §Queued threads.
- `05-Continuity-Log.md` = LIVE STATE. Test: *will this be false in ten sessions?* If it will still be true, it belongs elsewhere. EVICTION: status entries are pointer-style and the oldest rolls to the archive at each close; tic reports go straight to the archive.
- `06-Style-Sheet.md` = THE RULE SIDE — how the prose is written. Test: *does this govern sentences, regardless of what has happened?* Spend state goes to 07; vocabulary to 02. No eviction: rules are amended in place, never accumulated.
- `07-Story-Ledger/` = LAW (do-not-contradict canon), split on GROWTH BEHAVIOUR. Test: *could a future page contradict this?* `index.md` = pure TOC. LAW CORE (timeline, standing-rules, planted-clues, magic-snapshot, open-threads, established-facts) is stable — read in full every session. ACCUMULATORS (chapter-records, protected-phrasings) grow every chapter. EVICTION: per-book roll — at each book boundary the accumulators roll to `*-book-N.md` and leave the every-session read; the law core never moves.
- `archive/session-log.md` = HISTORY (append-only session records and design logs — spot-read on demand, never edited).
- `archive/outline-archive.md` = 04's spent-beat text and superseded plans — spot-read on demand.
- `manuscript/book-one/NN-Title.md` = the chapters.
- `TOOLS.md` = the catalog for all five `scripts/` and for `nlm`.

"Read 02/03/07" = read every canon file in the folder. **NOT part of any cold read:** each `index.md` (TOC only) and each `changelog.md` (a hygiene record of what moved, not canon — spot-read on demand, like the archive). The canon is in the topic files; git is the authority on what changed.

## Session protocol

**Open**
1. VERIFY: run `scripts/verify.sh` (git tree clean + `wc -w` vs the CANONICAL baselines in 05). Anything modified or untracked that no log entry explains = STOP and report before reading further.
2. COLD READ, then flag anything that itches BEFORE any work — treat it as a free continuity audit. **The TIERED COLD READ is in effect:**
   - all bibles in full, every session, forever — they are the compressed truth and must stay fully loaded;
   - the most recent 2 chapters in full, non-negotiable — the maturing-voice gradient is calibrated locally, chapter against neighbours; no summary carries cadence;
   - older chapters via `07-Story-Ledger/chapter-records.md`, plus targeted spot-reads of anything the session will touch (an echo, a protected phrasing, a scene being rhymed against). Skip a chapter's record when reading that chapter in full — the record substitutes for the chapter, it does not double it.
   - The archive is history, not part of the cold read — spot-read it only when a session record is needed. This is safe because continuity lives in the established facts, protected phrasings and clue ledger, never in rereading the manuscript.
3. Confirm the target from the NEXT TARGET block in 05. Never improvise a target unless asked to.

**Work**
4. New chapters: mandatory design argument first (as specified in NEXT TARGET) → propose chapter shape → WAIT for approval → draft.
5. Revisions: propose per-chapter cut/addition tables with projected counts; flat-or-leaner rule per chapter (against 05's CANONICAL baselines); failed passes get redone. Run `scripts/check-echoes.sh` on any new/revised chapter (every protected-phrase hit must be a deliberate echo) and report tic counts per 06 §Model-Tic Self-Awareness.
6. Rhythm: draft → react/revise while hot → approve → commit decisions to the files. The working files ARE the canon; there is no reupload step.
7. Ceiling: two chapters of new prose per session; three only if structurally simple. Heavy-canon chapters (the tournament, the fire) get a session to themselves, with a planning session beforehand if needed. The ceiling applies to NEW prose only — revision passes and line-edits are cheap.

**Close**
8. `git commit` (short imperative subject) + `git push`. Update baselines in 05 whenever prose changes; re-sync the reader notebook after prose changes.
9. Hygiene: append one changelog line to any 02/03/07 folder the session touched; roll the oldest inline 05 status block to the archive; collapse any newly spent 04 beat to its pin.

## Hard rules (never violate without author ratification)
- **00 is edited in place like every other file (author ruling, s32 — append-only DROPPED as worthless and counterproductive).** Wrong lines are corrected, dead lines are cut, `git log` is the update history; no `[SUPERSEDED]` tagging is owed. **Still author-ratified only:** do not add to, cut from, or reinterpret 00 without the author saying so. **And 00's test is narrowed (s32):** truths and things the author wants to hit — destinations, events, ideas — **not how, not when, not in what order** unless deliberately fixed. Staging rules go to 06, do-not-contradict state to 07. A one-session eviction pass is OWED.
- **NOTHING LIVES IN CHAT HISTORY.** Every decision, rule, or promising unresolved idea is written into a file and committed before session end — never leave ratified work uncommitted. Chat transcripts are disposable scaffolding.
- **Historical records are records** (session logs, design logs, the archive) — append, don't rewrite.
- **THE LEDGER FOLLOWS THE PAGE (system-wide).** If a line is not in the manuscript, it does not appear **in quotation marks** anywhere in the doc system — not in 07, not in 03, not in 05, 04 or 02. Quote marks are a claim that the words are on a page; **never type an entry from a draft, a design argument, or another ledger — quote it out of the committed chapter.** Text that is legitimately *not* page canon (design language, an author ruling, a struck or cut line kept as a record, a paraphrase of a beat) is written **unquoted, in italics** — the convention `07/protected-phrasings` has used since s25, now binding on every file. **Instrument:** `scripts/check-quotes.sh` checks every quoted span in the doc system against the manuscript; confirm each hit with `git log -S` before calling it a phantom, since a line may have been cut from a chapter that once held it.
- **ZERO-LOSS DISCIPLINE for doc-system work.** Any restructure moves content VERBATIM, then verifies: every non-empty line of the old file present in the new, coverage of anything dropped, and a parity run of any script that parses the file. Report the verification, don't assert it.

## Standing rules (defaults that take judgment)
- **VERSION CONTROL IS THE SAFETY NET.** Git history is the authority on what changed; the `wc -w` baselines in 05 are a cheap cross-check and the flat-or-leaner budget. Cut material is recoverable — restoration is one edit, so cut freely.
- **Reader-copy notebook (NotebookLM via `nlm`):** clean-reader simulator holding manuscript chapters ONLY — never add bibles, 00, or 05 to it (its blindness to sealed canon is the point). Query it for legibility probes before committing a chapter; treat answers as reader-inference evidence, never canon. Re-sync after prose changes: `scripts/sync-reader-notebook.sh`. Full rules and the rest of `nlm`'s dormant capabilities: `TOOLS.md`.
