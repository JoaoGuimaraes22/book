# Scene Prompt System

Companion to the portrait system. Covers multi-figure scenes, action, physical contact, and aftermath states.

Scenes are always generated **with reference images attached** — the full-body sheets, not the portraits. Sheets carry proportions, costume and how the clothing sits; portraits carry only the face.

---

## Scene skeleton

```
Image 1: full-body reference of [name].
Image 2: full-body reference of [name].

Same medium and style as the reference images: loose watercolour and
ink on rough cold-press paper, scratchy ink linework, wash blooms,
bare paper in the lights.
[+ for action: dry-brush drag and flicked spatter for the movement]

Setting: [place] as loose wash suggestion — walls implied behind
them, background falling into shadow. [light direction]

Composition: [crop]. [Who is where, facing which way.]

[WHAT IS IN EACH HAND — only if objects are involved]

[THE ACTION or THE MOMENT]

[Per-character block: pose, expression, costume]

Preserve both characters exactly as shown in the reference images —
faces, hair, colouring, apparent age, clothing. [Eye colours
restated.] Do not blend their features. Do not mix their clothing.
```

---

## The crop rule

**Chest-up or waist-up is the default for any scene with more than one figure.** It removes legs, feet, and most hands — which is where nearly every failure comes from.

Full-body only when the spatial relationship *is* the subject: the kneeling scene needed the height difference to work at all.

Evidence from testing: quiet scenes at chest-up came out right on the first attempt. The same fight at full body took six attempts and never fully resolved.

---

## Hand and object inventory

Objects are the single biggest failure source. Blades sprout from heads, hilts float unattached, extra weapons appear.

**Attach the count to each hand, not to the image.** "Three blades total" failed repeatedly. This worked:

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

Also: state hands that are deliberately **out of frame**, or the model may include them anyway.

**Weapon size by comparison to the body, never by name.** "Dagger" rendered as a near-longsword. This worked: *roughly the length of his forearm, noticeably shorter than her longswords.*

**Contact points, not trajectories.** "Sweeping toward his ribs" produced a blade aimed at empty floor twice. *The edge inches from his ribs, the blade in front of his body and clearly aimed at him* worked.

---

## Costume contamination

With two characters in similar-toned clothing, costume will bleed — Aeliana's gold hem appeared on Valeria's uniform when Valeria's clothing wasn't described.

Identity lines *are* redundant when a reference is attached. **Costume lines are not.** Always describe clothing per character, and when two are similar, state ownership explicitly:

```
Do not mix their clothing — the gold embroidery belongs only to
Aeliana, the armour only to Valeria, and Kael wears neither.
```

---

## Getting expression and emotional beats

- **"Nothing is happening"** stops the model importing drama into a quiet scene. Without it, two armed characters default to confrontation.
- **Point at the mouth, not the abstraction.** *Mouth open mid-word* reads as talking; "conversing" doesn't.
- **Warmth without breaking character.** Valeria's canon expression is unimpressed and tired; *not smiling — just not braced* got friendliness without turning her into someone else.
- **State contradictions as contradictions.** For the kneel: *the body is deferential and the attention is not.* Without that line the model resolves it into an ordinary bow.
- **Eye contact must be named as the subject.** Gaze alignment between two figures is unreliable. Putting it in caps as its own final paragraph worked:

```
THE TWO ARE LOOKING DIRECTLY AT EACH OTHER. His eyes up, hers down,
the lines of sight meeting. This eye contact is the subject of the
image.
```

- **One-sided gaze is easier** than mutual, and often more interesting — one looking away while the other watches.

---

## Settings

Architecture as **loose wash and dry-brush suggestion**, never detailed. It resolves as implied structure without fighting the linework.

```
Setting: a stone hall as loose wash suggestion — a broad flagstone
floor receding behind them, tall walls implied in cool grey washes,
the upper reaches lost in shadow. Both figures grounded on the same
floor plane.
```

`Both figures grounded on the same floor plane` matters — without it, one stands on a ground line and the other floats on bare paper.

Bare parchment ground (no setting) is the character-sheet convention. Using it for a scene produces two sheets sharing a frame, not a scene.

---

## Working scene types, in order of reliability

1. **Two-figure conversation, chest-up** — first try, cleanest result of the session.
2. **Three-figure conversation, waist-up, shallow arc** — worked; needs explicit costume ownership.
3. **Single figure aftermath** — worked; see injury notes below.
4. **Physical contact (embrace)** — worked; costume detail drifts out of position when arms are in unusual places.
5. **Kneeling with eye contact, full body** — worked, needed the contradiction line.
6. **Two-figure fight** — hardest. Six attempts, never fully clean at full body; acceptable at chest-up.
7. **Three figures and an animal, FULL BODY, feet included (s37)** — worked first try, and it is the first full-body group in the library that came out clean. What made it work was **scale stated as measurement** (below), not the crop rule, which it breaks.
8. **Four-figure conversation, waist-up (s34)** — worked, and it raises the tested ceiling from three. Four figures all in dark clothing and **not one garment bled**, which is the costume-ownership rule holding under the most pressure it has had.

### Scale between figures — STATE IT AS MEASUREMENT (s37)

**This is the most useful thing the scene system has learned, and it overturns an earlier finding.** A child rendered several years too old was blamed on the attached face reference outvoting the words. That was wrong. **Adjectives lose; ratios win**, and the reference is not the problem:

```
SCALE — the child is FOUR YEARS OLD and must read four:
The top of his head reaches roughly the man's hip.
His head is large for his body, roughly a fifth of his total height.
Short limbs, a round torso, no waist, no length in him anywhere.
The goat's shoulder is at about the child's chest.
```

*Very small · the head large in proportion · a toddler, not a boy of seven* had failed. **Every one of those is a comparison to nothing.** Naming the fraction of the frame, the fraction of the body, and one landmark on a third subject fixed it in a single run with the face reference still attached. **Do this for any figure whose age or size is load-bearing** — and note it also anchors the animal, which is why the goat came out the right size.

The portrait system's eye-line ladder does the same job for a face; this is its body equivalent, and the two are independent.

### Contact hands render, including under a crossing arm (s37)

Worth stating because the opposite was briefly written here and was wrong. In the pasture scene **both contact hands came through**: a hand flat on a child's upper back with the arm crossing behind him, and a hand buried in a goat's coat. **Author ruling: the hands are fine in that image.**

The retracted claim generalised from a single unconfirmed reading of `ch01-fallen-stars`, where the hand at the jaw looked to me half-lost. One picture, judged by eye, is not a failure mode. **Do not prompt around contact hands as though they were fragile** — nothing here has shown they are.

### Negative inventory works on animals too (s37)

*ONE GOAT, and only one — no second goat, no herd on the slope behind, no dog, no bird, no other animal anywhere in the picture* held completely. Same shape as the hand inventory and the costume ownership rule: **name the absences, not just the presence.**

### Four figures

**Depth is what makes four work.** Three sit in a shallow arc; four in an arc becomes a lineup. The instruction that worked was *two loose pairs at slightly different depths, all turned in toward each other* — the stagger gives the group a front and a back without turning anyone away.

**But the physical arrangement beats the social one, every time.** The same prompt asked for `two loose pairs` and, in caps, for `ALL FOUR ARE ENGAGED IN THE SAME CONVERSATION`. It got two pairs having two conversations. **When a grouping instruction and a staging instruction contradict each other, the staging wins** — it is the one a renderer can draw. To bind four figures into one conversation, name a **single speaker the other three are attending to**, and stagger the depth for the rest.

**Two people talking at once is worth having and it renders.** *Aurelian mid-sentence, mouth open* plus *Kael mouth open mid-word — answering him, overlapping, cutting in* both came through, and the overlap is what stops four standing figures reading as a portrait group.

**Negative ownership per character works as well as positive.** *Elarine and Kael wear no ornament, no metal and no white at all* held across the whole frame — no stray collar, no borrowed steel. State the absences by name, not just the possessions.

### Four figures — the quartet prompt, as run

```
Image 1: full-body reference of Kael.
Image 2: full-body reference of Valeria.
Image 3: portrait reference of Aurelian.
Image 4: portrait reference of Elarine.

Same medium and style as the reference images: loose watercolour and
ink on rough cold-press paper, scratchy ink linework, wash blooms,
bare paper in the lights.

Setting: a stone hall as loose wash suggestion — walls implied
behind them, background falling into shadow. Soft daylight from one
side.

Composition: waist-up, four figures standing in two loose pairs at
slightly different depths — AURELIAN and ELARINE half a step
forward on the left, KAEL and VALERIA slightly further back on the
right, all turned in toward each other. Every face clearly visible,
none turned away. Standing close, relaxed distance. No weapons
drawn, all hands empty and relaxed. Nothing is happening — this is
a quiet conversation between friends.

ALL FOUR ARE ENGAGED IN THE SAME CONVERSATION AND LOOKING AT EACH
OTHER, NOT AT THE VIEWER. Two of them are talking at once.

AURELIAN mid-sentence, mouth open, one hand lifted in an easy
gesture, turned toward Kael and Valeria. Chin carried high, gaze
direct and unguarded, open and pleasant. Dark-gold hair pushed back
off the forehead. Warm amber eyes, gold-brown, the skin around the
eye staying cool so the amber holds. Well-fed unweathered skin.
Broad through the shoulders for his age but the face still soft and
unfinished. HIS CLOTHING: good dark wool in deep umber and warm
charcoal, well fitted, an open collar over a clean white
undershirt. No armour, no ornament.

ELARINE turned to Aurelian, attention fully on him. Mouth closed
and still, brows unmoved, giving nothing back but entirely present.
Small and finely built, narrow shoulders. Ink-black hair drawn back
severely and bound tight at the nape, nothing loose. Pale indoor
skin. Eyes very dark brown, near black — the only solid black in any
face in the picture, small and precisely drawn. HER CLOTHING: plain
close-fitting dark clothing of very good quality, high buttoned
collar to the throat, ink-black and dark olive. No armour, no white
collar, no ornament of any kind.

KAEL turned toward Aurelian, mouth open mid-word — answering him,
overlapping, cutting in. Head slightly tilted, eyebrows a little
raised, loose and unguarded, none of the stillness he holds around
strangers. Pale near-white grey eyes, the lightest point in his
face. Dark uneven hair. HIS CLOTHING: plain charcoal tunic, no
collar showing, no ornament, no metal, no white.

VALERIA turned toward Kael, listening to his answer, half a smile
starting. Weight settled on one hip, one shoulder dropped, mouth
closed but the corner gone soft — amused, at ease, not braced.
Green eyes. Dark hair tied back. HER CLOTHING: charcoal sleeveless
coat over grey-blue underlayer, high collar with small bronze
insignia, steel vambraces on both forearms, fitted gorget at the
throat.

Four faces, four distinct characters. Kael's eyes pale grey,
Valeria's green, Aurelian's amber, Elarine's near-black. Preserve
each exactly as shown in their own reference image. Do not blend
any of their features.

DO NOT MIX THEIR CLOTHING. The steel armour, gorget and vambraces
belong only to Valeria — no one else wears metal. The white collar
and umber wool belong only to Aurelian. Elarine and Kael wear no
ornament, no metal and no white at all.
```

**THE COST, AND IT IS THE REAL FINDING: two of the four had no full-figure sheet.** Aurelian and Elarine were anchored on their **portraits**, which carry a face and nothing below the collar — so everything they are wearing in that image was authored in the prompt and is anchored to nothing. **It will not repeat in the next scene.** The rule at the top of this file says scenes take the full-body sheets for exactly this reason. Their sheets are owed.

### Three-figure arrangement

A shallow arc — all three angled toward each other but every face visible — is easier than a natural triangle, which puts someone's back to the viewer. Give the scene a **speaker and listeners**; the asymmetry is what makes it read as conversation rather than a lineup.

---

## Damage, injury and aftermath

**What renders without difficulty:** healed scars, bruising, grime and soot, torn clothing, exhaustion, dirt worked into skin.

**Torn clothing beats absent clothing.** For a visible torso, describe the garment as *destroyed* — hanging open, one sleeve gone, shredded but still on him — rather than removed. Reads as aftermath and renders reliably.

**For fresh cuts: name the cut and where it is. Do not describe the tissue.** This worked:

```
A fresh cut across his cheekbone. Several on his forearm and torso.
```

Wound-detail vocabulary — raw, split, edges open — appears to be what causes refusals, not the injury itself. Two data points only, so hold this loosely; location may also matter.

**Stated ages plus injury causes refusals.** Removing explicit ages from the prompt resolved it — the reference images carry age anyway, and `apparent age` stays in the preserve line. Do not try to engineer around a refusal; if honest description doesn't render, that's the tool's limit.

---

## What the reference carries vs what you must write

**Carried by the reference (can be cut):** face, bone structure, eye colour, hair colour, skin tone, apparent age, style, palette, paper.

**Must be written every time:** body proportions in unusual poses, posture, what each hand is doing, everything below the collar, framing, lighting across a whole body, and **all clothing** when more than one character is present.

---

## Canon the scene system keeps breaking

Two items recur because the system inherits them rather than inventing them, and both are in `../08-Plates/canon-brief.md`:

**KAEL'S GREY.** It is unspent on the page and **no published plate may show it** until a chapter spends it — anchors, portraits and scene TESTS are exempt, because they are references and not pages. The quartet test names it twice (`Pale near-white grey eyes, the lightest point in his face`, then again in the summary line) and renders it clearly. **That is legal in `images/scene-tests/` and illegal the moment the same composition is proposed as a plate.** A plate answers with FRAMING — distance, angle, occlusion — never by inventing a different colour.

**KAEL IS UNARMED IN EVERY SCENE.** His full-body sheet carries no weapons, the scene system attaches that sheet, and so every scene inherits a weaponless boy. Predicted when the sheet was adopted; demonstrated every time since. Page canon puts *two short blades across his back in a cloth wrap* and a knife inside the clothing. Until the sheet is redone, write the wrap into the scene prompt by hand whenever the moment would carry it.

### Three figures and an animal — where the prompt lives

**Produced `images/plates/ch01-vask-kael-goat.png` (s37), first run, author-written.** Full body with feet in frame, which the crop rule advises against, and it came out clean — the scale block above is why.

The image was adopted as a **Ch. 1 plate**, so the prompt lives with it: `plates/ch01.md`, under `### PLATE-VERBATIM: vask-kael-goat`. It is not duplicated here.

## Plates — what changes

A plate is a moment, not a person, so it takes neither the portrait system's fixed head-and-shoulders `Composition` nor its `Eyes: the focal point` line. **The plate prompt writes its own composition, lighting and framing every time.**

What it inherits is the house look and nothing else: the **Medium** and **Colour** paragraphs of the portrait system's fixed STYLE block. `scripts/build-prompts.sh` slices those two paragraphs out of that block and prepends them — there is no second copy of that text to drift.

**Plate prompts live in the chapter's sheet in `plates/`, one fenced block under a `### PLATE: <slug>` heading**, and build to `prompts/plates/<sheet>-<slug>.txt`. The prompt systems are the rule and are amended in place; plate sheets accumulate.

**Three things a plate must state that a portrait never has to:**

- **Where the light is.** The portrait block's soft directional light is gone. Say the source, say it is the only one, and say what it leaves dark.
- **Who is NOT in the frame.** An unattended run puts a person in an empty room and a watcher in a solitary moment. Name the absence.
- **Which faces are not visible, and that it is deliberate.** This is how a plate obeys THE PLATE FOLLOWS THE PAGE without inventing anything — and it is the only way Kael appears in a plate at all while his grey is unspent. Say *no eyes are visible anywhere in the picture* and say *do not turn the head toward the viewer*, or the run will helpfully fix it.

**The inherited Colour paragraph is written for faces, and a plate must often override it.** It ends *the warmth belongs to the skin alone, not the paper or the cloth* — true of a portrait, where the face is the only warm thing in the frame. A plate lit by a fire, a lamp or a town has its warmth landing on cloth, timber, stone and water, and a plate with no people in it has no skin at all. **Say where the warmth actually lands, inside the plate block.** Do not edit the fixed STYLE block to suit one picture.

**Anchoring cost, stated per plate.** Scenes want full-body sheets. Plates rarely get them: a plate of a child, of a parent, or of an empty room is anchored on a head-and-shoulders portrait or on nothing at all, and everything below the collar is then authored in the prompt and anchored to nothing — it will not repeat in the next plate. That is not a reason to skip the plate; it is a reason to write the cost on the sheet, so the next session knows which pictures share a body and which only share a face.

## Standing limitation

These models pattern-match rather than model objects. Overlapping limbs, occlusion, and held objects at odd angles are where that breaks — which is exactly what an action scene is.

The techniques here get a usable image in two or three attempts instead of ten. They do not make it reliable. For a specific fight beat rendered exactly, this is reference material for a commission, not a substitute for one.
