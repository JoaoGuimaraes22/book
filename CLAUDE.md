# Novel Project — Working Protocol (Claude Code era)

This is a fiction project. The document system is the sole source of truth; chat history is disposable. Migrated from Claude Chat 2026-08-20; the repo is now a git repository and git history is the authority on what changed.

## Files
Every file has a CONTRACT (what it holds), an ADMISSION TEST, and a named EVICTION PATH. Content that fails its file's test moves; it does not accumulate in place.

- `00-Author-Canon-SEALED.md` = SEALED author canon (truths of the story that may NOT yet be revealed on the page. Never contradict; reveal slowly. Append-only, dated blocks; never edit without author ratification.)
- `01`, `06` = bibles (premise, style).
- `02-World-Bible/`, `03-Character-Bible/` = FOLDERS since session 18 (02 — topic files; 03 — one file per character + `appearance-ledger.md`). Each has `index.md` = pure TOC, no facts, and `changelog.md` = one line per session. "Read 02/03" = read every file in the folder.
- `04-Outline.md` = THE FORWARD PLAN. Test: *is this not yet written?* Spent beats keep a one-line pin only (the numbers are load-bearing addresses cited from 00/02/03/05/07). EVICTION: at each chapter commit the beat collapses to its pin and its text rolls to `archive/outline-archive.md`. Unspent material with no fixed beat lives in §Queued threads.
- `05-Continuity-Log.md` = LIVE STATE. Test: *will this be false in ten sessions?* If it will still be true, it belongs elsewhere. EVICTION: status entries are pointer-style and the oldest rolls to the archive at each close; tic reports go straight to the archive.
- `07-Story-Ledger/` = LAW (do-not-contradict canon), a FOLDER since session 18, split on GROWTH BEHAVIOUR. `index.md` = pure TOC. LAW CORE (timeline, standing-rules, planted-clues, magic-snapshot, open-threads, established-facts) is stable — read in full every session. ACCUMULATORS (chapter-records, protected-phrasings) grow every chapter. Test: *could a future page contradict this?* EVICTION: per-book roll — at each book boundary the accumulators roll to `*-book-N.md` and leave the every-session read; the law core never moves.
- `archive/session-log.md` = HISTORY (append-only session records and design logs — spot-read on demand, never edited)
- `archive/outline-archive.md` = 04's spent-beat text and superseded plans — spot-read on demand
- `manuscript/book-one/NN-Title.md` = manuscript chapters

## Session protocol
Folded in from 05 §Working Protocol at session-18 addendum 6; verbatim pre-fold text and each rule's session provenance are in the archive. These rules win.

**Open**
1. VERIFY: run `scripts/verify.sh` (git tree clean + `wc -w` vs the CANONICAL baselines in 05). Anything modified or untracked that no log entry explains = STOP and report before reading further.
2. COLD READ, then flag anything that itches BEFORE any work — treat it as a free continuity audit. **TIERED COLD READ is in effect** (called session 15, from session 16 on):
   - all bibles in full, every session, forever — they are the compressed truth and must stay fully loaded;
   - the most recent 2–3 chapters in full, non-negotiable — the maturing-voice gradient is calibrated locally, chapter against neighbours; no summary carries cadence;
   - older chapters via `07-Story-Ledger/chapter-records.md`, plus targeted spot-reads of anything the session will touch (an echo, a protected phrasing, a scene being rhymed against). Skip a chapter's record when reading that chapter in full — the record substitutes for the chapter, it does not double it.
   - The archive is history, not part of the cold read — spot-read it only when a session record is needed. This is safe because continuity lives in the established facts, protected phrasings and clue ledger, never in rereading the manuscript.
3. Confirm target via the NEXT TARGET block in 05. Never improvise a target, only if requested.

**Work**
4. New chapters: mandatory design argument first (as specified in NEXT TARGET) → propose chapter shape → WAIT for approval → draft.
5. Revisions: propose per-chapter cut/addition tables with projected counts; flat-or-leaner rule per chapter (against 05's CANONICAL baselines); failed passes get redone. Run `scripts/check-echoes.sh` on any new/revised chapter (every protected-phrase hit must be a deliberate echo) and report tic counts per the MODEL-TIC SELF-AWARENESS rule (06 §Model-Tic Self-Awareness).
6. Rhythm: open on `git status` clean → draft → react/revise while hot → approve → commit decisions to the files → `git commit` → close. The working files ARE the canon; there is no reupload step.
7. Ceiling: two chapters of new prose per session; three only if structurally simple. Heavy-canon chapters (the tournament, the fire) get a session to themselves, with a planning session beforehand if needed. The ceiling applies to NEW prose only — revision passes and line-edits are cheap.

**Close**
8. Every decision commits to a file before session close. Session closes with a `git commit` (short imperative subject) + `git push`; update baselines in 05 whenever prose changes; re-sync the reader notebook after prose changes.
9. Hygiene at close: append one changelog line to any 02/03/07 folder the session touched; roll the oldest inline 05 status block to the archive; collapse any newly spent 04 beat to its pin.

## Standing working rules
- **NOTHING LIVES IN CHAT HISTORY.** Every decision, rule, or promising unresolved idea gets written into a file before session end. Chat transcripts are disposable scaffolding.
- **VERSION CONTROL IS THE SAFETY NET.** Git history is the authority on what changed; the `wc -w` baselines in 05 remain as a cheap cross-check and as the flat-or-leaner budget. Cut material is recoverable from history — restoration is one edit, so cut freely.
- **ZERO-LOSS DISCIPLINE for doc-system work.** Any restructure moves content VERBATIM, then verifies: every non-empty line of the old file present in the new, coverage of anything dropped, and a parity run of any script that parses the file. Report the verification, don't assert it.

## Instruments
- **Reader-copy notebook (NotebookLM via `nlm`):** clean-reader simulator holding manuscript chapters ONLY — never add bibles, 00, or 05 to it (its blindness to sealed canon is the point). Query it for legibility probes before committing a chapter; treat answers as reader-inference evidence, never canon. Re-sync after prose changes: `scripts/sync-reader-notebook.sh` (part of session close). Full rules in TOOLS.md; probe history in the archive.
- `nlm` has further dormant capabilities (reports, mind maps, audio overviews, expectation probes) — catalog and usage rules in `TOOLS.md`.

## Hard rules
- Never edit 00 without explicit author ratification; additions are dated append-only blocks.
- Commit after every author-ratified change; never leave ratified work uncommitted at session close.
- Historical records (session logs, design logs, the archive) are records — append, don't rewrite.
