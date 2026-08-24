# Portrait Prompt System

Tinted wash character portraits. Tool: ChatGPT image generation — no negative prompts, describe what you want rather than what you don't.

**How it works:** a fixed STYLE block, then a per-character AGE block, then an optional HAIR line, then a short SUBJECT block. Generate unanchored — no reference image attached.

**The three-part split is new at s34 and it was forced by a successful run.** The STYLE block was written as *identical across every character* and never actually was: the doc's own age note already told you to edit it for an older version of a character, and Aurelian's run needed an age paragraph written for a boy whose body is ahead of his face. **Age anatomy is per-character by nature — it is the one thing a shared block cannot carry.** So it is a block of its own now, and the fixed part is genuinely fixed.

---

## STYLE block — fixed

Paste verbatim, every time, for every character.

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

Eyes: the focal point of the picture, framed by dark lashes and
dark brows.

Composition: three-quarter view with the head turned away from the
viewer, gaze returning to the viewer. Head and shoulders, with
visible shoulder and collar anchoring the lower frame.

Lighting: soft directional light, gentle shadow beneath the
cheekbone and along the jaw, most of the face held in light values.
```

**CUT AT s34, and it stays cut:** the colour paragraph used to end `soft ochre in the mid-tones, most colour in the cheeks, nose and ears`. The ears ran hot from the first run and it was logged as a nuisance; Aurelian made it a fault. **A hot cheek competes with the eye**, which is fatal to a warm eye (his amber) and expensive for a dark one (Elarine's near-black). Cutting it is what let the amber win, and no character has ever needed it.

## AGE block — per character

Paste one, under the STYLE block. This is where the age lives; **age words in the SUBJECT block alone get ignored, and always have.**

**Aurelian — the body ahead of the face** *(the version that ran)*:

```
Age: eyes set at the vertical midpoint of the head. Fifteen — the
body is ahead of the face. Jaw softly defined but not sharp, cheeks
still full and unhollowed beneath the cheekbone, chin small, skin
smooth with no hardness anywhere in it. Adolescent face on a frame
that has outgrown it.
```

**Elarine — small, and nothing caught up yet:**

```
Age: eyes set at the vertical midpoint of the head. Fifteen, and
small for it. Jaw softly defined but not sharp, cheeks still full
and unhollowed beneath the cheekbone, chin small, neck slender,
skin smooth with no hardness anywhere in it. A small unfinished
frame; nothing about her has caught up with her yet except the
eyes.
```

**The original, still correct for Kael, Valeria and Aeliana:**

```
Age: eyes set at the vertical midpoint of the head, jaw softly
defined but not sharp, some remaining fullness in the cheeks.
Adolescent, not grown.
```

For an older version of a character, rewrite this block — do not just change the SUBJECT age line, and drop `Adolescent, not grown` plus the cheek fullness or they will fight the older read.

## HAIR line — optional

```
Hair: irregular clumps and locks of varying thickness, uneven
edges, naturally settled rather than combed.
```

**Include it for loose or unkempt hair** — Kael's hacked crop, Valeria's and Aeliana's loose lengths. **Omit it for any groomed or bound head**: it fights `groomed, not tousled` (Aurelian) and `bound tight at the nape, not one strand loose` (Elarine), and the SUBJECT block loses.

## SUBJECT block — template

The age words here do almost nothing on their own — **the AGE block above is what carries it.** Keep the identity line anyway; it sets station and sex.

```
SUBJECT — [cool pale / warm aged] parchment ground.
[Age and one-line identity.]
Eyes [colour] — [how they win: most saturated point, OR lightest value,
OR darkest value].
[Hair colour, length, any styling.]
[Skin condition.]
[Facial structure notes.]
[Expression.]
[Garment, with its colours.]
```

---

## The five characters

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
Handsome, with faintly asymmetrical features — one brow set
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
Dark embroidered high-collar court garment — scrollwork filigree
worked into the cloth itself at the collar and over the shoulder, in
tarnished gold thread against deep charcoal, the cloth in cool
grey-blues and dull umbers. Embroidery only: no armour, no pauldron,
no plate, no metalwork of any kind.
```

### Aurelian

**ADOPTED:** `images/aurelian-14.png`. Uses the **Aurelian AGE block** and **no HAIR line**.

```
SUBJECT — cool pale parchment ground.
A fifteen-year-old boy of a great house.
Eyes warm amber, gold-brown — the most saturated point in the
picture, luminous against the muted palette. The skin immediately
around the eye stays pale and cool-shadowed so the amber does not
merge into the warmth of the face; the eye is the one warm
saturated point in the picture and the cheeks stay quieter than it.
Dark-gold hair, thick and heavy, well cut and well kept, pushed
back off the forehead — groomed, not tousled.
Clear well-fed skin with sun on it from riding and hunting — no
weathering, no chapping, no grime, no freckles.
Broader through the shoulders and longer in the limb than the age
would give, the frame already settling toward a man's — a boy built
a year ahead of himself.
Strong even bone structure, straight nose. The jaw broad but not
yet set, the cheek still soft, the face several years behind the
shoulders.
Expression open, easy and pleasant, mouth closed with a faint
readiness to smile at one corner, chin carried high, gaze direct
and entirely unguarded — the face of someone who has never once
been put on the ground by anything. Not smug, not sneering, not
cruel, not haughty.
Good dark wool, well made and well fitted, an open collar over a
clean undershirt, in deep umber and warm charcoal. No ornament, no
insignia, no chain, no badge — the quality is in the cut and the
cloth.
```

**CANON NOTE — *riding and hunting* IS A RENDERING STEER, NOT CANON.** It is the phrase that bought the well-fed nobleman's colouring instead of a labourer's, and it earned its place in the block. **It is true of nobody in `03`:** Aurelian's sun comes off the yard, four days a week, on purpose, taking bruises from a seventeen-year-old spear. **Do not let it migrate into `03` or onto a page** — it is a prompt-side lever and it stays inside this file. If a future run wants the sheet's own version, *sun on it from training outdoors every day by choice* is the swap to try.

**WHAT THE RUN PROVED.** The amber fence works — the eyes are the one saturated point and they win a picture with a lot of warm hair in it — but **it works because the cheeks were demoted in two places at once**, the fixed block's cheek clause cut and the SUBJECT's `the cheeks stay quieter than it` added. Do not remove either half and expect the other to hold. **The two-sentence facial structure also outperformed one clause:** *Strong even bone structure, straight nose.* then the age sentence separately. Bone and age fight if they share a sentence.

### Elarine

**NOT YET RUN.** Uses the **Elarine AGE block** and **no HAIR line** — bound-severe hair and `naturally settled rather than combed` cannot both win. Revised off Aurelian's run: the facial structure split into two sentences, and the cheek guard kept even though the fixed block's cheek clause is now cut, because her flush is a tell and must not be spent here.

```
SUBJECT — cool pale parchment ground.
A fifteen-year-old girl of a great house.
Eyes very dark brown, near black — the DARKEST VALUE in the
picture, not the most saturated. The only place in the image where
the ink goes fully solid: two small absolute darks in a face made
otherwise of pale washes. Small, steady, precisely drawn, and the
darkest thing in the frame by a clear margin.
Ink-dark hair, a flat neutral black with no blue in it, drawn back
severely off the face and bound tight at the nape, not one strand
loose, the whole mass smooth and close to the skull.
Pale untouched indoor skin, clear and unmarked, no freckles. The
skin's warmth stays low and even across the whole face; no high
colour in the cheeks.
Small and finely built — narrow shoulders, a small head, a slender
neck.
Fine economical features, nothing exaggerated anywhere. The face
small and still unfinished, the cheek soft, nothing about her yet
grown into itself.
Expression: attention fully engaged and giving nothing back. Eyes
level and fixed on the viewer, mouth closed and still, brows
unmoved. She is in the middle of working something out and has
arrived at no verdict. Not cold, not haughty, not bored, not
amused, not tired.
Plain dark clothing of very good quality, close-fitting and exactly
made, a high buttoned collar to the throat, in ink-black and dark
olive. No jewellery, no embroidery, no ornament of any kind —
nothing on her that does not work.
```

---

## How the system works

**Three eye mechanisms.** The STYLE line says only "focal point"; each SUBJECT block states how its own eyes win, because in a muted picture there are three different ways to be the focus and a colour can only use one of them.
- **Saturation** — Valeria's green, Aeliana's blue, Aurelian's amber: the most saturated point in an otherwise desaturated image.
- **Lightest value** — Kael's near-white grey, which is almost colourless and cannot win on saturation at all.
- **Darkest value** — Elarine's near-black, which can win on neither: it is the one place the ink goes fully solid in a picture made of tints.

**Amber is the fragile one.** A warm eye sits in a face the STYLE block has already made warm, which is the same disappearance that eats Kael's grime. Aurelian's block therefore fences the eye specifically — `the skin immediately around the eye stays pale and cool-shadowed` — and demotes the cheeks so the eye is the only warm saturated point. Check that first if his portrait comes back flat. **CONFIRMED s34:** the fence held and the amber won a frame carrying a great deal of warm hair. It needed BOTH halves — the fixed block's cheek clause cut, and the SUBJECT's `the cheeks stay quieter than it` added.

**Ground temperature is per-character.** Kael, Valeria and Elarine cool, Aeliana warm. Hers went warm because pale silver hair needs something to sit against; it stays **the one deliberate inconsistency in the set**. Aurelian was the test of that and stayed cool: dark-gold hair does not need a ground to sit against, and his warmth belongs in the skin and the hair, where the STYLE block already localises it. Warm ground remains Aeliana's alone and means something because it is.

**Warmth must be localised.** Any warm instruction spreads to the whole image unless you name what stays cool. `The warmth belongs to the skin alone, not the paper or the cloth` is what confines it. Kael needs the extra `the grime stays cool grey, never warm brown` — warm grime on warm skin disappears entirely.

**Age is written as anatomy, not adjectives.** Age words alone get ignored. What works: eyes at the vertical midpoint of the head, jaw softly defined but not sharp, remaining cheek fullness, narrow neck. For an older version of a character, change the SUBJECT age line *and* delete `Adolescent, not grown` plus `some remaining fullness in the cheeks` from the STYLE block, or they'll fight the older read.

**Complexion encodes station.** Kael weathered → Valeria mid → Aurelian clear with sun on it → Elarine pale indoor → Aeliana pale untouched. Discovered by accident on the first three, kept on purpose: five characters, five visibly different lives, none of it stated in text. Aurelian added the point the scale was missing — a great-house child who *chooses* the yard, so the sun is on him and the weather never is.

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
- ~~**Ears run hot.**~~ **SUPERSEDED s34 — the whole clause is cut.** `Most colour in the cheeks, nose and ears` was taken literally and the ears came out pink, which was a nuisance; the real fault was the *cheeks*. High cheek colour competes with the eye for the one saturated point the picture is allowed — fatal to a warm eye, expensive for a dark one. Cut from the fixed block. Ears still warm slightly without it, and that is fine.
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
Handsome, with faintly asymmetrical features — one brow set
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
3. ~~Minor: the block still says *plain, ordinary bone structure* against `03`'s ratified **handsome**~~ — **DONE (s34)**, in both his blocks; by this doc's own findings the word did nothing anyway. **Items 1 and 2 STAND**, exactly as the author left them.

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

`00`, `02` and `03` are canon; a SUBJECT block is not. A block that disagrees with a sheet is a bug in the block. Live items: Aeliana's silver is a **Vessantine house trait, never the drain-mark** (the mark is pure quartz white); **Kael is handsome and filthy, not plain**, and his grey is **unspent on the page** — anchors may show it, plates may not until a chapter spends it; **never design the coat**; **Aeliana wears NO ARMOUR in Book One** — court dress only, and the pauldron that reached the adopted `aeliana-15.png` is the error this rule exists to stop; **no insignia, badge or house colour on Aurelian or Elarine**, because `07/planted-clues` reserves *Insignia the father recognizes with horror* for the Part IV fire and Valeria's collar already spends it once.

**AURELIAN'S AMBER IS NEW CANON (author ruling, s34)** — his eye colour was unruled in 00, 02, 03 and on every page, and the portrait system cannot write a block without one. Fed to `03/aurelian` and the canon brief. **Elarine's dark eyes are sheet canon and deliberately unspent on the page** — Ch. 14 and Ch. 15 both decline to say what colour they are (*her eyes did what her eyes did*), which is the better version and must survive: a portrait may show them, a plate may not name them.

**KNOWN AND UNFIXED:** the adopted `aeliana-15.png` carries the forbidden pauldron. The block is corrected; the image is adopted-but-flagged pending a regeneration run the author has not yet chosen to spend.
