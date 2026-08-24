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

## Standing limitation

These models pattern-match rather than model objects. Overlapping limbs, occlusion, and held objects at odd angles are where that breaks — which is exactly what an action scene is.

The techniques here get a usable image in two or three attempts instead of ten. They do not make it reliable. For a specific fight beat rendered exactly, this is reference material for a commission, not a substitute for one.
