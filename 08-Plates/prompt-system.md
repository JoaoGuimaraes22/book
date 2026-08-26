# Prompt System

Tool: ChatGPT image generation. Describe what you want; a negation earns its place only when something in the picture pulls toward the thing banned. Paste `canon-brief.md` at the top of the conversation first.

Two recipes. A **portrait** is generated unanchored — no reference attached — so the prompt carries the medium. A **scene or plate** is generated with reference images attached, so the references carry the medium, the faces and the apparent age, and the prompt carries everything else.

`scripts/build-prompts.sh` assembles the fenced blocks below into `prompts/`; the headings are its markers. Every finding, run record and revision that produced these rules is in `archive/findings.md`, verbatim, under its original heading.

---

# Portraits — STYLE · AGE · HAIR · SUBJECT

## STYLE block — portrait

Verbatim, every portrait.

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

## AGE block — one per character

The eye line is the age instrument, and the only one that works on its own: eyes **below** the vertical midpoint of the head is a child, **at** it an adolescent, **above** it an adult — and it is a dial, not three stops (Kael at nine sits *just below*). Age words in the SUBJECT block alone are ignored.

For a grown face, name the quality you want and the adjacent one that reads as decline, and forbid the decline by its markers: *weather, not age* (Vask); *lean, not wasted* (Severin); *fully grown, and nothing has been taken out of her — not girlish, not unformed* (Neris). One negation cannot hold a line against a stack of positives pointing the other way.

#### Child — Kael at four

```
Age: a small child of four. THE HEAD IS A CHILD'S — the cranium
large and round and wide across the top, the face small and set
low within it, and the eyes BELOW the vertical midpoint of the
head, not at it and not above it. Round full cheeks with real fat
in them, a small soft nose, a small round chin, no jaw definition
anywhere at all, a short soft neck. The eyes large relative to the
face; the brows fine and faint. Everything soft, nothing in the
face set yet. A very young child — not a small adolescent, not a
miniature adult, and not one year older than four.
```

#### Nine — Kael at nine

```
Age: a boy of nine. The head is still a child's — the cranium large
and round across the top, the face set low within it — and the eyes
sit JUST BELOW the vertical midpoint of the head: closer to that
midpoint than a small child's are, and still clearly below it. The
face has begun to come out of the cranium: a little definition
arriving at the chin, the cheeks still full but no longer soft with
infant fat, the nose still small, the neck still short. Brows fine
but readable. NINE — not a small child of four or five, not an
adolescent, and none of the jaw a teenager has.
```

#### Adolescent — Kael at fourteen, Valeria, Aeliana

```
Age: eyes set at the vertical midpoint of the head, jaw softly
defined but not sharp, some remaining fullness in the cheeks.
Adolescent, not grown.
```

#### Aurelian — the body ahead of the face

```
Age: eyes set at the vertical midpoint of the head. Fifteen — the
body is ahead of the face. Jaw softly defined but not sharp, cheeks
still full and unhollowed beneath the cheekbone, chin small, skin
smooth with no hardness anywhere in it. Adolescent face on a frame
that has outgrown it.
```

#### Elarine — small, nothing caught up yet

```
Age: eyes set at the vertical midpoint of the head. Fifteen, and
small for it. Jaw softly defined but not sharp, cheeks still full
and unhollowed beneath the cheekbone, chin small, neck slender,
skin smooth with no hardness anywhere in it. A small unfinished
frame; nothing about her has caught up with her yet except the
eyes.
```

Noted s45: this block says *fifteen* and sets the eyes at the midpoint, the file it cut is named `-14`, and `03` has her at ~13. Both plates anchored on it drifted to mid-teens. Not re-cut.

#### Vask — grown and worn down

```
Age: a man of about thirty-five, and he must read thirty-five —
not forty-five and not fifty. Eyes set slightly above the vertical
midpoint of the head. The jaw fully set and hard at the edge, no
fullness anywhere in the cheek, a shallow hollow beneath the
cheekbone. Lines at the outer corners of the eyes and faintly from
the nose to the mouth, and nowhere else: no scoring across the
forehead, no sunken temple, no loosening or sagging anywhere in
the skin. THE WEAR ON HIM IS WEATHER, NOT AGE — sun and wind and
salt worked hard into the surface of a face whose structure
underneath is young and hard. Neck thick, the tendons standing.
Nothing soft left anywhere in him. Heavily weathered, and nothing
has been taken out of him — the body sound, the strength all still
there. Not elderly, not frail, not diminished, not ill. And
nothing on display: a man who has worked outdoors for twenty
years, and no more than that.
```

#### Neris — grown, the age in the eyes

```
Age: a woman of about thirty-five. Eyes set slightly above the
vertical midpoint of the head. The jaw fully set and clean at the
edge, the cheek flat and unhollowed, the skin smooth and even over
good bone, the neck smooth and the throat unmarked. No lines
anywhere in the face except the faintest at the outer corners of
the eyes. Fully grown, and nothing has been taken out of her face
yet. Not girlish, not unformed — a fully adult face that has simply
not been worn. The age is in the eyes and nowhere else at all.
```

#### Severin — old, worn to what mattered

```
Age: an old man of about sixty-five. Eyes set well above the
vertical midpoint of the head. Deep lines cut from the nose to the
mouth, across the forehead and at the outer corners of the eyes;
the skin coarse, dry and weathered, drawn tight over the bone. The
face pared down to its structure, brow and cheekbone hard and
clearly readable. NO hollow cheeks, NO sunken temples, NO thin or
scrawny neck, NO slackness or sagging anywhere, NO frailty of any
kind. WORN TO WHAT MATTERED: everything inessential gone and every
essential thing still there. Not frail, not gaunt, not sick, not
wispy. An old man who is plainly still dangerous and completely at
ease about it.
```

## HAIR line

```
Hair: irregular clumps and locks of varying thickness, uneven
edges, naturally settled rather than combed.
```

Include it for loose or unkempt hair (Kael, Valeria, Aeliana, Vask, Neris, Severin). Omit it for a groomed or bound head (Aurelian, Elarine) — it fights the SUBJECT block and wins.

## COMPOSITION override — half figure

Replaces the STYLE block's Composition paragraph when the character's build is part of the reference (Severin). The file still belongs in `images/portraits/`.

```
Composition: half figure, cut at roughly the waist, the shoulders
and chest and both forearms in frame. Three-quarter view with the
body angled away from the viewer, the head turned back so the face
is visible, gaze returning to the viewer. Empty parchment ground,
no setting, no background elements.
```

## SUBJECT template

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

**How the eyes win — one axis each, and check it against the hair first.** Saturation: Valeria's green, Aeliana's blue, Aurelian's amber — and amber needs the skin around the eye kept cool and the cheeks quieter than it, or the warm face eats it. Lightest value: Kael's grey. Local contrast: Neris, Vask — two clauses, demote the hair to *fine ink strands and open transparent washes with bare paper left through the mass, no hard-edged black anywhere in it*, then *the sharpest step from light to dark in the whole picture happens inside the eye itself, at the edge of the iris*. Finish: Elarine — the only fully resolved thing in a loose picture. A dark eye cannot win on darkest value against dark hair unless the hair is demoted.

**Hair: name what it competes with, then push the other way.** Dark hair against a dark eye → demote it. Light hair on pale ground → define it (*defined ink strands and clear drawn edges against the pale ground, never dissolving into the paper*). A grey head: tell the brows not to match, or the tool harmonises them. A beard covers the mouth: move the expression to the eyes and brows.

**Ground is per character:** cool pale parchment for everyone but Aeliana, whose silver needs warm aged parchment to sit against. **Complexion encodes station:** Kael weathered → Valeria mid → Aurelian clear with sun on it → Elarine pale indoor → Aeliana pale untouched; the parents extend the scale off its top. The scale runs on weathering and value, never on speckle.

**Ban the shape, count the thing.** Several negations aimed at one feature remove the feature — *no freckles* did nothing, and five bans on white in the hair removed Vask's grey. One ban on the bad form plus a positive quantity of the good one: *one strand in six, scattered, never gathered*. Attack the archetype the tool is reaching for (*not a wizard, not a sage*) as well as the affect. *Plain* and *not handsome* do not render; dirt, weather and a hacked crop do. Two edit passes at most — each softens the granulation and warms the palette. The medium speckles every face: texture, not freckles, and it cannot be prompted away.

---

# The characters — SUBJECT blocks

Each is the block that cut the adopted reference (or, for the s33 set, the current-system version of it — `prompts/README.md`). Age block and HAIR line as listed.

### Kael at fourteen

`images/portraits/kael-14.png` · adolescent · HAIR.

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

### Kael at four

`images/portraits/kael-4.png` · child · HAIR. The one Kael whose face is not doing the coat; the block forbids the system's own default by name, or an unattended run inherits it.

```
SUBJECT — cool pale parchment ground.
A four-year-old boy of a mountain village.
Eyes near-white neutral grey — the LIGHTEST VALUE in the picture,
cool and colourless, not the most saturated. Distinct dark limbal
ring, small dark pupil. Large and wide open in a small face.
Dark hair, fine and soft, cut short and uneven at home by somebody
who was not being careful, falling over the forehead.
Wind-chapped and outdoors all day — high colour across the cheeks
and the nose from the cold, cool grey dust and dirt on the skin
and in the creases of the neck, the grime staying cool grey and
never warm brown. A CHILD'S skin under it: no weathering, no
roughness, no hardness anywhere in it.
No scars and no marks anywhere on him.
Expression OPEN and entirely unguarded, wholly present, looking
straight at the viewer with complete and untroubled certainty.
Nothing withheld, nothing watchful, nothing wary — a child who has
never once had a reason to conceal anything. Mouth closed and
relaxed. NOT flat, NOT still, NOT level, NOT guarded, NOT cautious,
not sad, not solemn.
Plain undyed wool, coarse and much mended and a little too big for
him, in dull oatmeal and dead olive.
```

### Kael at nine

`images/portraits/kael-9.png` · nine · HAIR. Author-revised before the run. *The ink carries the cloth* is the finish counterweight for anything wearing worked cloth. Ran with a village behind him against the block's empty ground; adopted as it stands. Covers Ch. 3–7.

```
SUBJECT — cool pale parchment ground.
A nine-year-old boy of a mountain village.
Eyes near-white neutral grey — the LIGHTEST VALUE in the picture,
cool and colourless, not the most saturated. Distinct dark limbal
ring, small dark pupil. Large and clear in a young face.
The hair is dark but never a solid mass: fine ink strands and open
transparent washes with bare paper left through it, soft wash-bled
edges, no hard-edged black anywhere in it. The sharpest step from
light to dark in the whole picture happens inside the eye itself,
at the edge of the iris.
Dark hair, cut short and uneven at home by somebody who was not
being careful, falling over the forehead.
Handsome, with faintly asymmetrical features — one brow set
slightly higher, nose a fraction off centre.
Outdoors at altitude his whole life: wind-chapped, high colour
across the cheeks and the nose, cool grey dust and dirt on the skin
and in the creases of the neck, the grime staying cool grey and
never warm brown. A CHILD'S skin under it — nothing worked deep, no
roughness, no hardness anywhere in it.
No scars and no marks anywhere on him.
Expression ALERT AND DIRECT, wholly present, meeting the viewer
head-on with open unhurried attention. Brows slightly raised, eyes
wide and fully open, lips closed but not pressed — a boy in the
middle of asking something. Interested, unguarded, unafraid. NOT
flat, NOT blank, NOT level, NOT guarded, NOT wary, not sullen, not
sad, not solemn, not smiling.
Plain undyed wool, coarse and much mended, in dull oatmeal and dead
olive, the collar loose at the throat. The ink carries the cloth —
dense scratchy linework in the seams, the patches, the mended
places and the coarse weave at the collar, ink dominant over wash
throughout the garment.
```

### Kael at nine — still

Not run. A second face for the stillness — same boy, only the mouth, lids and brows move — because a plate cannot argue a reference out of its expression (§Scenes and plates). `kael-9` for a chapter that asks, this for one that closes.

```
SUBJECT — cool pale parchment ground, entirely empty. No landscape,
no building, no horizon, nothing behind him.
A nine-year-old boy of a mountain village.
Eyes near-white neutral grey, cool and COLOURLESS — no more colour
in the iris than there is in the whites around it, and no blue in it
anywhere. The LIGHTEST VALUE in the picture, winning on value and
never on saturation. Distinct dark limbal ring, small dark pupil.
The hair is dark but never a solid mass: fine ink strands and open
transparent washes with bare paper left through it, soft wash-bled
edges, no hard-edged black anywhere in it. The sharpest step from
light to dark in the whole picture happens inside the eye itself,
at the edge of the iris.
Dark hair, cut short and uneven at home by somebody who was not
being careful, falling over the forehead.
Handsome, with faintly asymmetrical features — one brow set
slightly higher, nose a fraction off centre.
Outdoors at altitude his whole life: wind-chapped, high colour
across the cheeks and the nose, cool grey dust and dirt on the skin
and in the creases of the neck, the grime staying cool grey and
never warm brown. A CHILD'S skin under it — nothing worked deep, no
roughness, no hardness anywhere in it.
No scars and no marks anywhere on him.
Expression WITHHELD AND COMPLETELY STILL. The lids sit a fraction
low over the eyes, not wide and not narrowed. The brows are level
and do not move. The mouth is CLOSED, the lips together and
relaxed, not pressed and not parted. The face is at rest and gives
nothing back — a boy who has just finished working something out
and is not going to say what. NOT asking, NOT curious, NOT eager,
NOT wide-eyed, NOT wondering, NOT hopeful, and equally NOT sad, NOT
sullen, NOT wary, NOT frightened, not smiling, not blank and not
sleepy. He is thinking, and none of it is on the surface.
Plain undyed wool, coarse and much mended, in dull oatmeal and dead
olive, the collar loose at the throat. The ink carries the cloth —
dense scratchy linework in the seams, the patches, the mended
places and the coarse weave at the collar, ink dominant over wash
throughout the garment.
```

### Valeria

`images/portraits/valeria-14.png` · adolescent · HAIR.

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

`images/portraits/aeliana-15.png` · adolescent · HAIR. The adopted image carries a pauldron the block forbids; flagged, not regenerated.

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

`images/portraits/aurelian-14.png` · Aurelian · no HAIR. *Riding and hunting* is a rendering steer that bought the well-fed colouring; it is not canon and stays in this block.

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

### Elarine

`images/portraits/elarine-14.png` · Elarine · no HAIR. The darkest-value clause could not beat her own hair and the eyes won on finish; if she is ever re-cut, demote the hair (§SUBJECT template).

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

### Vask

`images/portraits/vask.png` · Vask · HAIR. The adopted image shows no grey and reads younger than `03`'s *used tools*; both ruled acceptable (s34, s43) and `03` does not move. The block is the corrected one; its grey instruction has failed twice and the cause is not settled — do not run the same fix a third time.

```
SUBJECT — cool pale parchment ground.
A grown man of a mountain village, a herder by every appearance.
Eyes iron-dark, near black — the DARKEST VALUE in the picture, and
the sharpest step from light to dark anywhere in the image happens
inside the eye itself, at the edge of the iris.
Iron-dark hair of MEDIUM LENGTH — long enough to cover the ears
and reach the jaw, roughly cut a long time ago by somebody who was
not being careful and grown out since. Falling where it falls,
pushed back off the forehead.
The hair is dark but never a solid mass: rendered as fine ink
strands and open transparent washes with bare paper left through
it, soft wash-bled edges, no hard-edged black and no hard-edged
white anywhere in it. The grey lives in that openness — scattered
pale strands among the dark. HE IS GREYING EARLY, ahead of his
age: roughly one strand in six is grey, scattered evenly right
through the mass and thickest at the temples, and the grey must be
plainly visible at a glance. It is SCATTERED, never GATHERED — no
streak, no seam, no patch.
Weathered hard — wind, sun and salt worked deep into the skin, the
whole face used. The weathering is on the surface and the face
under it is not old.
Broad through the shoulders and no further: heavy across the top
of the back and the neck, nothing wasted below it, an economy
rather than a bulk.
Expression: level, mouth closed, gaze direct and completely
unreadable. There is nothing in his eyes that is angry and nothing
in them that is anything at all. Not hostile, not cold, not sad,
not kind, not tired. Perfectly still — a man who moves exactly as
much as is required and is not moving now.
Coarse undyed working cloth, heavy weave, a plain collar closed to
the base of the throat, much mended, in dull grey-brown and dead
olive. No ornament, no buckle, no badge.
```

### Neris

`images/portraits/neris.png` · Neris · HAIR. Reads early thirties and striking; ruled good (s44). Her hands are where the book keeps her — any full figure or scene puts them in frame and occupied.

```
SUBJECT — cool pale parchment ground.
A grown woman of a mountain village, to all appearances.
Eyes dark brown — they win the picture on CONTRAST rather than on
colour: a dark iris against a clean, light, clearly drawn sclera,
the widest jump from light to dark anywhere in the image packed
into the smallest area, while the whole face around them is held
at a quiet middle value. The eyes read wide open and awake.
The face around the eyes is held at a quiet even middle value. The
hair is dark but never solid: rendered as fine ink strands and open
transparent washes with bare paper left through the mass, soft
wash-bled edges, no hard-edged black anywhere in it. The sharpest
step from light to dark in the whole picture happens inside the eye
itself, at the edge of the iris.
Long dark brown hair falling loose past the shoulders — warm rather
than cool, plainly brown and not black, no blue anywhere in it —
unstyled and naturally settled, a few strands across the temple.
Ordinary — not arranged, not severe, not styled for anything.
Skin with weather and sun on it but not coarsened — she has worked
outdoors for years and it has not got into her the way it gets
into the others.
Fine bones — a narrow nose, a fine jaw, good structure close under
the skin. Handsome and unremarkable in the same breath.
Expression: entirely still, and the stillness is the subject of the
picture. Attentive, composed, giving nothing back, watching the
viewer the way you watch something you are deciding about. Mouth
closed and relaxed. Not cold, not sad, not kind, not warm, not
maternal, not tired.
Plain village working cloth — a coarse overdress over a plain
undershirt, the neck closed, in dull grey-brown and undyed
oatmeal, worn soft and much mended. No ornament of any kind.
```

### Severin

`images/portraits/severin.png` · Severin · HAIR · half-figure composition. Author-revised: the build moved out of the AGE block into the SUBJECT; the brows told not to match; the light hair defined against the pale ground; the expression moved to the eyes because the beard has the mouth.

```
SUBJECT — cool pale parchment ground.
An old man, the head of a school.
Eyes very dark brown, near black — the DARKEST VALUE in the
picture by a wide margin, and the sharpest step from light to dark
anywhere in the image happens inside the eye itself, at the edge
of the iris. His hair and beard are the lightest mass in the frame
and his eyes are the darkest point in it, and that opposition is
the whole picture. The brows stay dark while the hair and beard
are fully grey — they do not match, and that is correct.
Hair FULLY GREY — the entire head, evenly and completely, a true
neutral grey that is neither warm silver nor cold white. A FULL
THICK HEAD OF IT, coarse and heavy, worn LONG — swept back off the
forehead and falling past the collar to the shoulders. Not
thinning, not wispy, not receding, no scalp showing. The hair and
beard hold their shape as defined ink strands and clear drawn
edges against the pale ground — never dissolving into the paper,
never lost against it.
A full grey beard and moustache, close-cropped and neatly kept,
the same neutral grey as the hair.
The grey is uniform everywhere: no streak, no seam, no band, no
patch, nothing gathered or shaped anywhere in it, and no part of
it lighter or colder than any other part.
A big powerful old man — tall, long in the bone, wide and thick
across the shoulders and deep through the chest, with visible hard
muscle across the shoulders and upper back, a thick corded neck,
and heavy thick wrists and forearms far too thick for a man whose
work is paper. The robes do not disguise any of it: the frame
reads straight through the cloth.
A scholar's stoop laid over the top of that body and not fitting
it — the head carried a little forward, the shoulders rounded, and
the powerful frame underneath plainly not built for the posture.
The stoop is a habit worn badly over a fighter's body, and both
must be visible at once.
Expression: the beard covers the mouth and jaw, so the whole
expression lives in the eyes and brows. The gaze level, direct,
unhurried and patient, the brows unmoved and completely relaxed,
the eyes steady and giving out nothing at all — a face that has
already priced whatever it is looking at. Courteous and attentive
and entirely unreadable. Not warm, not kindly, not stern, not sad,
not tired, not twinkling, not amused, not benign — and not a
wizard, not a sage, not a kindly old mentor of any kind.
Dark master's robes, heavy and plain, worn loose and open at the
front over a plain undertunic so the chest and shoulders read
through rather than being swallowed by cloth, with a broad chain
of office lying across both shoulders — plain linked metal with
real weight in it, dull and unpolished, no gems and no ornament of
any kind. In deep charcoal and cold grey-brown, the chain in
tarnished bronze.
```

---

# Full figures — BASE · SUBJECT

Anchored to the character's portrait — the one anchored portrait case, because the point is to extend an existing face. The `Image` line goes first, then BASE, SUBJECT, and the closing line.

## BASE block — full figure

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

#### Closing line

```
Preserve his/her face, hair, colouring and apparent age exactly as
shown in the reference image. Extend to a full standing figure; the
reference shows head and shoulders only.
```

### Kael — full figure

`images/full-figures/kael-14-full.png`. Village register. The sheet carries no weapons; page canon has two short blades across his back in a cloth wrap — write the wrap into a scene by hand when the moment carries it.

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

### Valeria — full figure

`images/full-figures/valeria-14-full.png`. The matched pair is load-bearing; the collar insignia is canon-by-precedent.

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

### Aeliana — full figure

`images/full-figures/aeliana-15-full.png`. Hair loose here by default; a Ch. 22 plate puts it up.

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

---

# Scenes and plates

References attached: the full-figure sheet where one exists — it carries build and costume, a portrait carries only the face, and everything below a portrait's collar is then authored in the prompt and will not repeat in the next picture. A plate may attach both of one person. The `Image N:` lines name the file to attach.

**The reference carries** the face, bone, eye and hair colour, skin, apparent age, the medium — and the expression. In a close crop the reference's mood beats the prompt: move the eyes onto an object or change the pose before writing an override, and if that fails cut a second reference. **The prompt must carry** posture, each hand, everything below the collar, the framing, the light where it is not soft side daylight, the hues on the objects that have them, and all clothing when more than one figure is present — costume bleeds between dark garments; identity does not.

## Scene style line

The header for anything with a reference attached. The build prepends it to every `### PLATE:` block that opens with an `Image` line; a plate with no reference gets the STYLE block's Medium paragraph instead.

```
Same medium and style as the reference images: loose watercolour and
ink on rough cold-press paper, scratchy ink linework, wash blooms,
bare paper in the lights.
```

## Plate template

The scene-test register (author ruling, s47: the scene tests are the folder's best pictures). Start here and add an instrument from the list below only when this picture needs it.

```
Image 1: <file>.png — <full-figure|portrait> reference of <who>.

Same medium and style as the reference images: loose watercolour and
ink on rough cold-press paper, scratchy ink linework, wash blooms,
bare paper in the lights.

Setting: <place> as loose wash suggestion — a wall implied behind
them, the background falling into shadow. Soft daylight from one side.

Composition: <where the bottom edge cuts the body, and what that puts
out of frame>. <Who is where, facing which way, at what depth.>

<The moment, in one paragraph — or that nothing is happening, where
the subject implies violence.>

<NAME> <pose>. <Expression, pointed at the mouth and the brows.>
<Costume by construction, hues named — deep umber and warm charcoal,
ink-black and dark olive.>

<Where each pair of eyes goes. If they meet, the eye contact is the
subject of the image.>

Preserve each exactly as shown in their reference image — faces,
hair, colouring, apparent age. Do not blend their features. Do not
mix their clothing: <the X belongs only to A, the Y only to B>.
```

The specimens are on `scene-tests.md`: `talk-kael-valeria` is the two-figure version of this and `quartet-conversation` the four.

## Instruments — one when the picture needs it, none by habit

**The cut.** Name it as a landmark on the body and say what it puts out of frame — *the bottom edge of the picture crosses both boys just below the collarbone, so that no arms, no hands and no legs are in the frame at all.* *Chest-up* and *waist-up* both came back wider. A cropped figure needs a floor, or it hangs on bare paper:

```
Setting: a stone hall as loose wash suggestion — a broad flagstone
floor receding behind them, tall walls implied in cool grey washes,
the upper reaches lost in shadow. Both figures grounded on the same
floor plane.
```

**Hands.** One line per hand, and the absences — *three blades total* failed twice; this held:

```
WHAT IS IN EACH HAND:
His right hand holds one short blade and nothing else.
His left hand is empty and open.
Her right hand holds one longsword and nothing else.
Her left hand holds one longsword and nothing else.
Four hands, three blades, nothing else in any hand. Both her
scabbards are empty. No other blade, blade tip or hilt appears
anywhere in the frame.
```

A limb that carries two instructions is one chain, in order — *knife, hand, wrist, grip — one continuous limb.* A size contrast holds only for the pair it is written beside; state it again wherever it must hold. Hands that are deliberately out of frame are said to be.

**Scale.** A ratio to something in the frame, never an adjective — *very small* and *a toddler, not a boy of seven* both failed:

```
SCALE — the child is FOUR YEARS OLD and must read four:
The top of his head reaches roughly the man's hip.
His head is large for his body, roughly a fifth of his total height.
Short limbs, a round torso, no waist, no length in him anywhere.
The goat's shoulder is at about the child's chest.
```

The two terms must sit where the frame can compare them. In a face-filling crop under the fourteen-year-old anchor no ratio has yet pulled an age down: the anchor is the lever, and the eye-line rung is cheap and may stay.

**Nouns.** A concrete noun arrives with its default, and the default beats every adjective hung on it — *dagger* returned a longsword, *coat* a frock coat, *candle* a wick flame, *standing stone* a menhir. When you want something other than the default, describe the construction — what it is made of, how it closes, how long it falls — with the defining feature first and measured, then kill the default by name. Banning a noun's features leaves nothing: describe what is there. The test: could a costumier from three centuries all draw it from the words?

**The winner and the rival.** Where a small thing must win the picture, hold the rival at quiet middle values with no hard edges, then site the sharpest step from light to dark on the winner — two channels, edge and finish, so both clauses. It needs a rival to demote and a dark for it to recede into; in flat daylight the instrument is the crop. Below a hand's size in frame nothing carries finish, and the fix is again the crop. Read the framing, pose and costume back and check the tell is actually visible in the picture described.

**Light.** Soft side daylight is the default and needs no clause. A named source: say where it is, that it is the only one, what it leaves dark, and where the warmth lands. A warm source lights a face only when it is close — a candle on the bench does, a town at the foot of a mountain does not; where the source is far, the figure is lit by ambient sky and the source is the one warm thing. A low or high camera is written as the surfaces it exposes — *the underside of the jaw is visible; the horizon sits level with his knees* — never as where the viewer stands. For real depth, say where the viewer is first, stack the frame bottom to top, and pin it with a ratio.

**Colour.** Name the hues on the objects that have them and ban nothing (author ruling, s42; re-ruled s45 after a global cool clause propagated through eleven blocks). The portrait Colour paragraph's *warmth belongs to the skin alone* is a portrait clause and does not reach a plate.

**Absence.** Ban what something in the picture pulls toward — a herd behind a goat, a second blade near a swordsman, a face where the framing hid one, a watcher in a solitary moment — and nothing else. Naming a thing to ban it puts the word in front of the filter: *no blood on the bound child* was refused.

**Gaze and expression.** Say where each pair of eyes goes. *Level* and *flat* are directions, not temperaments — each has put a gaze on the viewer that the block sent elsewhere (`plates/ch14.md`, `plates/ch17.md`). Point at the mouth (*mouth open mid-word*), not the abstraction. State a contradiction as one — *the body is deferential and the attention is not.* *Not smiling — just not braced* got warmth without breaking character. Eye contact between two figures is named as the subject, on its own, in caps:

```
THE TWO ARE LOOKING DIRECTLY AT EACH OTHER. His eyes up, hers down,
the lines of sight meeting. This eye contact is the subject of the
image.
```

**Ownership.** With two dark garments in frame, state it, and the absences per character as well as the possessions:

```
Do not mix their clothing — the gold embroidery belongs only to
Aeliana, the armour only to Valeria, and Kael wears neither.
```

**Four figures.** Two loose pairs at different depths, all turned in; a single speaker the other three attend to, or the pairs hold two conversations. Two people talking at once renders and stops the group reading as a portrait.

**Lettering.** One short word, capitals, named exactly, declared the only thing written on the surface, sized against the frame. Not a page.

**Injury.** Name the cut and where it is, never the tissue:

```
A fresh cut across his cheekbone. Several on his forearm and torso.
```

Torn clothing renders where absent clothing does not. Healed scars, bruising, grime and soot render without difficulty. A stated age beside an injury is refused; a refusal produces no picture where a fault produces a wrong one — do not iterate on a refusal, it is the tool's limit on the moment.

**Before the run.** Each fact once, in the place it belongs. Every clause must be able to change a pixel; a note to a colleague goes on the sheet. A block long enough to restate itself is long enough to contradict itself, and the renderer splits the difference. Before cutting a repeat, name what it forbids and find where else that is forbidden — count the channel, not the sentence. Length is not the metric; ritual is. **And measure the built file against the nearest adopted plate of the same figure count** — `wc -w 08-Plates/prompts/plates/*.md`, where the one-figure and four-figure shapes are both on the shelf. A block half again longer than its neighbour is carrying ritual, not content (author, s48: *a lot of times less is more*; the third cut with the same cause, so it is a rule and not a finding).

## Plates — what changes from a scene

A plate is a moment, not a person, and THE PLATE FOLLOWS THE PAGE binds it (`README.md`). It writes its own composition and light every time; it says who is not in the frame; where it hides a face for its own reasons it says *no eyes are visible anywhere in the picture* and *do not turn the head toward the viewer*, which are two bans. The block lives on the chapter sheet under `### PLATE: <slug>` and builds to `prompts/plates/<sheet>-<slug>.md`; a block that ran exactly as written is `### PLATE-VERBATIM:` and is emitted untouched. Blocks that have already run are not retrofitted.

## Limits

Run-to-run variance is real: rerun before changing anything. The tool pattern-matches — overlapping limbs, occlusion and held objects at odd angles are where it breaks, which is what an action scene is. The methods here get a usable image in two or three attempts; for a fight beat rendered exactly, this is reference material for a commission.
