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

---

# Full-figure system

Same method, different BASE. Full figures are generated **anchored** to the character's face portrait — the one case the doc's own rule allows, since the point is to extend an existing face rather than mint a new one.

## BASE block — full figure

Paste verbatim, every time.

```
Medium: loose expressive watercolour and ink on rough cold-press
paper, visible paper tooth and pigment granulation, scratchy fine
ink linework, wash blooms with hard irregular edges, generous bare
unpainted paper.

Colour: restrained transparent washes laid over a dominant ink
drawing. Muted, desaturated, earthy. The ink linework remains the
strongest element; colour tints rather than fills. Large areas left
as bare paper. Warm living skin, soft ochre in the mid-tones — the
warmth belongs to the skin alone, not the paper or the cloth.

Composition: full figure, standing, head to feet, feet included and
fully in frame. Three-quarter view, body angled away from the
viewer, head turned back so the face is visible. Empty parchment
ground, no setting, no background elements, no cast shadow.

Lighting: soft directional light from one side, gentle shadow along
the shaded side of the figure and beneath the chin.

Hair: irregular clumps and locks of varying thickness, uneven
edges, naturally settled rather than combed.
```

Close every SUBJECT with:

```
Preserve his/her face, hair, colouring and apparent age exactly as
shown in the reference image. Extend to a full standing figure; the
reference shows head and shoulders only.
```

## Kael — full figure

**ADOPTED:** `images/kael-14-full.png` — generated in the VILLAGE register (frayed grey tunic, belt, wrapped calves, worn boots), which resolves audit item 2 below in favour of the page. **Audit item 1 STANDS AND NOW COMPOUNDS: he carries no weapons**, and the scene system attaches the full-body sheet to every scene, so every scene inherits a weaponless Kael.

```
Image 1: reference portrait of Kael — pale grey eyes, dark uneven
hair, fifteen years old.

SUBJECT — cool pale parchment ground.
Age: still adolescent in frame — narrow through the shoulders
compared to a grown man, limbs long relative to the torso, but
densely built and visibly strong for his age.
A fifteen-year-old boy, lean and hard, wiry strength from a life of
hard physical training — cabled forearms, strong hands, deep chest,
no soft weight anywhere. Compact and athletic rather than bulky.
Eyes near-white neutral grey, cool and colourless, dark limbal ring
— the lightest point in the face, visible even at distance.
Dark hair, unstyled, cut short and uneven, falling over the
forehead.
Weathered and wind-chapped from conditioning outdoors at altitude,
skin clean, no dirt or grime.
Plain, ordinary bone structure, faintly asymmetrical — one brow set
slightly higher, nose a fraction off centre.
Posture: standing straight and perfectly balanced, weight evenly
settled, shoulders level and relaxed, hands loose and open at his
sides. Completely still. Economical and controlled — the stillness
of someone trained, not the slouch of a labourer. Not posed, not
braced, no swagger.
Expression still and level, mouth closed, gaze flat and direct.
Plain dark clothing, well-made and well-maintained, chosen to go
unnoticed: a close-fitting long-sleeved tunic in charcoal grey,
sleeves pushed to the forearm, belted at the waist with a plain
leather belt. Dark fitted trousers. Cloth wraps at the calves. Soft
dark leather boots, worn but sound, made for quiet movement.
```

**CANON AUDIT — OWED BEFORE THIS RUNS (author: for now it's fine, resume next session):**

1. **HE HAS NO WEAPONS, and a full figure exists to supply kit.** Page canon, Ch. 23: *the two short blades were across his back in their wrap*, and *the knife was where his father had put it, off the belt, inside the coat*. `02/dueling` protects his dual-blade silhouette as distinct from Valeria's — and as drawn she has two visible swords and he has nothing. Insert: *Carried across his back, bundled in a plain cloth wrap: two short blades, hilts covered, reading as an anonymous carried bundle rather than as weapons. A plain knife carried inside the clothing rather than on the belt, not visible.*
2. **THE TWO KAEL REFERENCES DISAGREE ON CLOTHING.** The face portrait is *threadbare open-collar linen, coarse weave, frayed at the collar, in dull umber and olive*; this is *well-made and well-maintained, chosen to go unnoticed*, charcoal, boots *made for quiet movement*. Those are two different boys. **And the second quietly literalises THE COAT** — the book's central metaphor for his concealment, which `08` rules must never be designed as a look. He is thirteen, houseless, and lives on a mountain with goats: what makes him unnoticeable is owning nothing worth looking at, not selecting kit for stealth. The village register should win; the training already shows in the body.
3. Minor: the block still says *plain, ordinary bone structure* against `03`'s ratified **handsome** — and by this doc's own findings the word does nothing anyway.

## Valeria — full figure

**ADOPTED:** `images/valeria-14-full.png`

```
Image 1: reference portrait of Valeria — green eyes, long straight
dark hair, sixteen years old.

SUBJECT — cool pale parchment ground.
Age: still adolescent in frame — narrow through the shoulders
compared to a grown woman, limbs long relative to the torso, but
solidly built and visibly trained.
A sixteen-year-old girl, lean and hard, trained — strong shoulders,
strong hands, no soft weight. Athletic rather than heavy.
Eyes vivid green, luminous, the brightest point in the face.
Long straight dark hair, blue-black, tied back off the face for
duty, loose strands escaping at the temples.
Clear unmarked skin, no freckles.
Posture: standing at ease but alert, weight settled evenly, chin
level, shoulders square. Both hands resting lightly on the pommels
of the two swords at her hips, elbows relaxed. Still and watchful.
Not braced, no swagger.
Expression: chin level, gaze flat and direct into the viewer,
mouth closed and still. Unimpressed and faintly tired. Not
vulnerable, not wistful, not searching.
Royal guard uniform: a fitted knee-length sleeveless coat in deep
charcoal over cool grey-blue, high collar, buttoned front, cut for
movement, worn over a close-fitting long-sleeved underlayer. Simple
bronze house insignia at the collar. Light armour only — plain
unornamented steel vambraces on both forearms, a fitted gorget at
the throat. Broad leather belt carrying a matched pair of plain
longswords, one sheathed at each hip, scabbards identical, hilts
unornamented, both blades sheathed.
Dark fitted trousers. Black leather boots to the knee, well-worn
and well-kept.
```

**CANON NOTES.** The matched pair is right and load-bearing: `02/dueling` makes the longsword the empire's ONE-handed honourable arm, so a pair is her heresy stated in her kit — *twin blades, both hands full* — and it sharpens the protected silhouette split rather than blurring it, **hers long, his short.** Page canon at Ch. 27: *both blades in her hands.* The grey does station without ornament, which suits a house whose care arrives as correction by post. **The collar insignia is CANON-BY-PRECEDENT, adopted with a known cost:** `07/planted-clues` reserves *Insignia the father recognizes with horror* for the Part IV fire, and the word appears on no page yet — so a friendly character wearing one spends the novelty early. Author kept it; recorded, not re-raised.

## Aeliana — full figure

**ADOPTED:** `images/aeliana-15-full.png`

```
Image 1: reference portrait of Aeliana — pale blue eyes, silver-white
hair, sixteen years old.

SUBJECT — warm aged parchment ground.
Age: still adolescent in frame — narrow shoulders, slight build,
limbs long relative to the torso, not yet filled out.
A sixteen-year-old noble girl, slight and sheltered, soft — no
muscle, no weathering, a body that has never worked.
Eyes pale blue, luminous, the brightest point in the face.
Long wavy silver-white hair falling past the shoulders, partly
pinned at the crown, almost colourless, rendered mostly as bare
paper and the palest cool greys with fine ink strands defining the
locks. Colourless silver-white, not blonde — no yellow or gold in
the hair. The hair is the lightest mass in the picture.
Pale untouched skin, freckles across the nose and cheeks.
Posture: standing straight, weight even, chin level, shoulders
back, hands folded loosely in front of her. Formal and composed —
the bearing of someone raised to be looked at, taught to stand
still. Not braced, no swagger, nothing athletic in the stance.
Expression quiet and slightly unguarded, lips closed and soft.
Court dress: a full-length gown in a blue so dark it reads black
until the light moves on it, fitted through the bodice with a high
collar, long fitted sleeves, the skirt falling to the floor. Gold
embroidery massed at the shoulders and heavily worked around the
hem — dense, elaborate scrollwork in far greater quantity than any
garment needs, the excess itself the point. Bare dark fabric
between shoulder and hem. No armour, no pauldron, no belt, no
visible weapon. Soft indoor slippers, barely visible beneath the
hem.
```

**CANON NOTES.** Clean against the page. Ch. 22: *a blue so dark it read black until the light moved on it, with gold at the shoulder and the hem in a quantity that had no function except to be a quantity.* A first pass ran the gold down the front and left the hem bare; this one is right, and the quantity reads as quantity. *A body that has never worked* and the hands unoccupied are her sheet exactly — Kael looks for *where the hands go unoccupied* and gets nothing. **Her hair is loose here by the author's default; a Ch. 22 plate must put it UP off the neck**, per the page.

## Canon that binds every block

`00`, `02` and `03` are canon; a SUBJECT block is not. A block that disagrees with a sheet is a bug in the block. Live items: Aeliana's silver is a **Vessantine house trait, never the drain-mark** (the mark is pure quartz white); **Kael is handsome and filthy, not plain**, and his grey is **unspent on the page** — anchors may show it, plates may not until a chapter spends it; **never design the coat**.
