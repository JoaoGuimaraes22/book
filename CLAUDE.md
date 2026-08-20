# Novel Project — Working Protocol (Claude Code era)

This is a fiction project. The document system is the sole source of truth; chat history is disposable. Migrated from Claude Chat 2026-08-20; the repo is now a git repository and git history is the authority on what changed.

## Files
- `00_-_Author_Canon__SEALED_.md` = SEALED author canon (truths of the story that may NOT yet be revealed on the page. Never contradict; reveal slowly. Append-only, dated blocks; never edit without author ratification.)
- `01`–`04`, `06` = bibles (premise, world, characters, outline, style)
- `05_-_Continuity_Log.md` = THE WORKHORSE (protocol, established facts, seed ledgers, NEXT TARGET, word-count baselines)
- `manuscript/book-one/NN_-_Title.md` = manuscript chapters

## Session protocol (full rules live in 05 §Working Protocol — read them, they win over this file)
1. VERIFY: `git status` must be clean. Anything modified or untracked that no log entry explains = STOP and report before reading further. Optional cross-check: `wc -w` chapters + 00 against the CANONICAL baselines in 05 (real `wc -w` on this machine is the only valid counter — chat-era counts ran 1–3% under because they missed standalone em-dashes).
2. COLD READ all bibles + all chapters. Flag anything that itches BEFORE any work. (Tiered-read amendment in 05 applies from ~Ch. 12.)
3. Confirm target via the NEXT TARGET block in 05. Never improvise a target, only if requested.
4. New chapters: mandatory design argument first (as specified in NEXT TARGET) → propose chapter shape → WAIT for approval → draft.
5. Revisions: propose per-chapter cut/addition tables with projected counts; flat-or-leaner rule per chapter (against 05's CANONICAL baselines); failed passes get redone. Cut material is recoverable from git history — restoration is one edit.
6. Every decision commits to a file before session close. Session closes with a `git commit` (short imperative subject) + `git push`; update baselines in 05 whenever prose changes.
7. Ceiling: two chapters of new prose per session; three only if structurally simple.

## Instruments
- **Reader-copy notebook (NotebookLM via `nlm`):** clean-reader simulator holding manuscript chapters ONLY — never add bibles, 00, or 05 to it (its blindness to sealed canon is the point). Query it for legibility probes before committing a chapter; treat answers as reader-inference evidence, never canon. Re-sync after prose changes: `scripts/sync-reader-notebook.sh` (part of session close). Full rules in 05 §READER-COPY INSTRUMENT.
- `nlm` has further dormant capabilities (reports, mind maps, audio overviews, expectation probes) — catalog and usage rules in `TOOLS.md`.

## Hard rules
- Never edit 00 without explicit author ratification; additions are dated append-only blocks.
- Commit after every author-ratified change; never leave ratified work uncommitted at session close.
- 05's historical sections (session logs, hygiene bullets, design logs) are records — append, don't rewrite.
