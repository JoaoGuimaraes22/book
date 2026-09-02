# 07 — Story Ledger (index)
**Status:** THE LAW of the story — do-not-contradict canon. Pure TOC, no facts. Changes only when canon changes. Live state: `../05-Continuity-Log.md` · history: `../archive/session-log.md`.

## LAW CORE — read at every session open
- [timeline.md](timeline.md) — part/age structure and every age pinned on the page.
- [standing-rules.md](standing-rules.md) — author-ratified story-side state that **no single chapter owns**: the departure ledger, the parents at capacity, what the fire left, the boat, and the facts that outlast Book One. **Per-chapter state is `chapter-records.md`, not here** — the Ch. 37–53 sections were rolled to `../archive/standing-rules-book-two.md` at s76 as duplicates of it.
- [magic-snapshot.md](magic-snapshot.md) — canon snapshot; deep layer in 00, public layer in 02.
- [open-threads.md](open-threads.md) — the LIVE threads, organised by kind and **maintained by removal**: added when a chapter opens one, deleted when a chapter answers it. Pre-s76 per-chapter log: `../archive/open-threads-log.md`.
- [established-facts.md](established-facts.md) — facts no single chapter owns; names in use, blocked and available.

## DESIGN-TIME — read when designing a chapter, not at every open
- [planted-clues.md](planted-clues.md) — the clue ledger: what was planted, where, and what the page has done with it. Book One's PAID cohort, lifted at the book boundary per the ledger's own rule: [planted-clues-book-1.md](planted-clues-book-1.md) — not parsed by the script; spot-read on demand. `scripts/clues.sh <keyword>` returns what the page already holds on what a scene touches — **after the scene is designed, never before**; **never read whole** — the script is its only reader, and the payoff column (a spoiler) stays behind `-p`, on request.

## ACCUMULATORS
- [chapter-records.md](chapter-records.md) — one canonical record per committed chapter of the CURRENT PART (summary + FACTS tail). Read at every open, skipping chapters read in full from `manuscript/`. **Per-Part roll:** when a Part closes, its records move to a file of their own (below); the Parts are never consolidated per book (author, s52).
- [chapter-records-parts-1-3.md](chapter-records-parts-1-3.md) — Ch. 1–22. Spot-read on demand; continuity for these chapters is carried by the law core, the 03 sheets and the clue ledger.
- [chapter-records-part-4.md](chapter-records-part-4.md) — Ch. 23–36, Part IV, the close of Book One. Spot-read on demand, as above.
- [chapter-records-part-5.md](chapter-records-part-5.md) — Ch. 37–46, **Part V: THE BOX** (author, s76). Spot-read on demand, as above.
- Spent design canon rolled out of 00 at s46: `../archive/author-canon-spent.md` — history, not cold-read.
- [protected-phrasings.md](protected-phrasings.md) — on-page coined phrasing; parsed by `scripts/check-echoes.sh`. **Not cold-read** — run the script on every new or revised chapter instead; a hit is a CUT unless argued.

Book boundary: the clue ledger lifts its PAID section to `planted-clues-book-N.md` (its own rule); the chapter records roll per Part, never per book (author, s52); the law core never moves. No word counts here — `wc -w` prints them.
