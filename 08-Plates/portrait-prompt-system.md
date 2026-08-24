# Portrait Prompt System

Tinted wash character portraits. Tool: ChatGPT image generation — no negative prompts, describe what you want rather than what you don't.

**How it works:** one fixed STYLE block, identical across every character, followed by a short SUBJECT block that changes. Generate unanchored — no reference image attached.

---

## STYLE block

Paste verbatim, every time, for every character.

```
Medium: loose expressive watercolour and ink on rough cold-press
paper, visible paper tooth and pigment granulation, scratchy fine
ink linework, wash blooms with hard irregular edges, generous bare
unpainted paper.

Colour: restrained transparent washes laid over a dominant ink
drawing. Muted, desaturated, earthy. The ink linework remains the
strongest element; colour tints rather than fills. Large areas left
as bare paper. Warm living skin, soft ochre in the mid-tones, most
colour in the cheeks, nose and ears — the warmth belongs to the
skin alone, not the paper or the cloth.

Eyes: the focal point of the picture, framed by dark lashes and
dark brows.

Composition: three-quarter view with the head turned away from the
viewer, gaze returning to the viewer. Head and shoulders, with
visible shoulder and collar anchoring the lower frame.

Lighting: soft directional light, gentle shadow beneath the
cheekbone and along the jaw, most of the face held in light values.

Age: eyes set at the vertical midpoint of the head, jaw softly
defined but not sharp, some remaining fullness in the cheeks.
Adolescent, not grown.

Hair: irregular clumps and locks of varying thickness, uneven
edges, naturally settled rather than combed.
```

## SUBJECT block — template

```
SUBJECT — [cool pale / warm aged] parchment ground.
[Age and one-line identity.]
Eyes [colour] — [how they win: most saturated point, OR lightest value].
[Hair colour, length, any styling.]
[Skin condition.]
[Facial structure notes.]
[Expression.]
[Garment, with its colours.]
```

---

## The three characters

### Kael

```
SUBJECT — cool pale parchment ground.
A fifteen-year-old mountain village boy.
Eyes near-white neutral grey — the LIGHTEST VALUE in the picture,
cool and colourless, not the most saturated. Distinct dark limbal
ring, small dark pupil.
Dark hair, unstyled, hacked short and uneven by hand, falling over
the forehead.
Sun-weathered and wind-chapped from work at altitude, freckles
across the nose, cool grey soot and dust along one cheekbone and in
the creases of the neck — the grime stays cool grey, never warm
brown.
Plain, ordinary bone structure, faintly asymmetrical — one brow set
slightly higher, nose a fraction off centre. Narrow neck, no facial
hair.
Expression still and level, mouth closed and relaxed, gaze flat and
direct. Neither hostile nor sad.
Threadbare open-collar linen shirt, coarse weave, frayed at the
collar edge, in dull umber and olive.
```

### Valeria

```
SUBJECT — cool pale parchment ground.
A sixteen-year-old girl.
Eyes vivid green — the most saturated point in the picture,
luminous against the muted palette, set against heavy dark lashes
and strong dark brows so the green reads sharp.
Long straight dark hair, blue-black, falling loose past the
shoulders.
Clear unmarked skin, no freckles.
Slightly rounded face, faint hollow beneath the cheekbone, small
chin, straight nose, narrow neck.
Expression: chin level, gaze flat and direct into the viewer, mouth
closed and still. Unimpressed and faintly tired. Not vulnerable,
not wistful, not searching.
Dark wrapped garment, plain heavy fabric, no ornament, in deep
charcoal and cool grey-blue.
```

### Aeliana

```
SUBJECT — warm aged parchment ground.
A sixteen-year-old girl.
Eyes pale blue — the most saturated point in the picture, luminous
against the muted palette.
Long wavy silver-white hair falling loose past the shoulders,
partly pinned at the crown, almost colourless, rendered mostly as
bare paper and the palest cool greys with fine ink strands defining
the locks. Colourless silver-white, not blonde — no yellow or gold
in the hair. The hair is the lightest mass in the picture.
Pale untouched skin, freckles across the nose and cheeks.
Face slightly rounded rather than elongated, small rounded chin,
straight nose, short philtrum, slender neck.
Expression quiet and slightly unguarded, lips closed and soft.
Dark embroidered high-collar garment with ornate fitted pauldron,
scrollwork filigree, the metalwork in tarnished bronze against deep
charcoal, in cool grey-blues and dull umbers.
```

---

## How the system works

**Two eye mechanisms.** Saturated eyes (Valeria's green, Aeliana's blue) win by being the most saturated point in a muted picture. Kael's near-colourless grey can't win that way, so it wins on *value* instead — the lightest thing in the frame. This is why the shared STYLE line says only "focal point" and each SUBJECT block states its own mechanism.

**Ground temperature is per-character.** Kael and Valeria cool, Aeliana warm. Hers went warm because pale silver hair needs something to sit against; it's the one deliberate inconsistency in the set.

**Warmth must be localised.** Any warm instruction spreads to the whole image unless you name what stays cool. `The warmth belongs to the skin alone, not the paper or the cloth` is what confines it. Kael needs the extra `the grime stays cool grey, never warm brown` — warm grime on warm skin disappears entirely.

**Age is written as anatomy, not adjectives.** Age words alone get ignored. What works: eyes at the vertical midpoint of the head, jaw softly defined but not sharp, remaining cheek fullness, narrow neck. For an older version of a character, change the SUBJECT age line *and* delete `Adolescent, not grown` plus `some remaining fullness in the cheeks` from the STYLE block, or they'll fight the older read.

**Complexion encodes station.** Kael weathered → Valeria mid → Aeliana pale. Discovered by accident, kept on purpose: three characters, three visibly different lives, none of it stated in text.

---

## Unanchored vs anchored

Generate **unanchored** for canonical portraits. The earlier anchored workflow was the source of persistent age drift — each generation inherited an older face from the reference and aged it further. Removing the anchor fixed it in one pass; all three now read their stated ages.

The tradeoff: unanchored gives a slightly different individual each run. Same character type, same style, not the same face.

Use an **anchor** only when continuity within a specific image matters — multiple characters in one frame, or a follow-up to an existing plate. Prepend `Image 1: reference portrait of [name]` and add `Preserve identity exactly as shown in the reference image`. Expect the face to age.

**Age progressions are free.** Running the same SUBJECT block with a changed age line produces a coherent progression — the neck thickens, the jaw sets, the cheek hollows, weathering deepens. Label the files by age (`kael-15`, `kael-20`) rather than treating one as canonical and the other as a variant.

---

## Known behaviours

- **Run-to-run variance is real.** One Valeria run came back watery — flat washes, sparse linework — and the identical prompt on the next run was correct. Rerun before changing anything. If it persists, add `dense scratchy ink hatching throughout, ink dominant over wash in the clothing and hair`.
- **"Plain" and "not handsome" don't work.** The attractiveness prior overrides them. Dirt, weathering, hacked hair and frayed clothing do the job instead. Off-centre features described as present things (*a nose broken once and set slightly crooked*) survive where absences of beauty don't.
- **Negations fix gaze drift.** The default pull is toward a wistful upward gaze. `Not vulnerable, not wistful, not searching` corrected it in one pass where positive description alone kept failing.
- **Ears run hot.** `Most colour in the cheeks, nose and ears` is taken fairly literally and ears come out pink. Drop `and ears` if it bothers you.
- **Edit passes cost texture.** Two maximum. Granulation softens and the palette warms with each one. If a third is needed, regenerate with the change written into the SUBJECT block instead.
- **Traits propagate silently.** Freckles once ended up on all three characters because the line got copied between prompts. Same risk with expression — identical affect across a cast flattens them. Decide per character.

---

## Open question

**Valeria's costume doesn't signal her station.** She's a royal guard of noble lineage, currently dressed in plain heavy wrapped cloth with no ornament — the plainest garment in the set. Kael's rags say village, Aeliana's filigree says noble, Valeria's cloth says neither. Either design her something (uniform, house mark, proper scabbard) or decide the plainness is deliberate — off-duty, disguised, estranged. Her garment line appears in every prompt for her, so it's worth settling before generating more.
