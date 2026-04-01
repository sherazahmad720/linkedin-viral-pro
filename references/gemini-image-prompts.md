# Gemini Image Prompt Engineering Guide

> Gemini generates the background images/textures for each of the 5 image styles.
> CRITICAL: Never ask Gemini to generate text — all text is added in Canva.

---

## General Rules for All Gemini Prompts

1. **ALWAYS include:** "No text, no words, no letters, no numbers, no writing in the image"
2. **ALWAYS specify:** "Square format, 1080x1080 pixels" for LinkedIn feed
3. **ALWAYS include:** style, mood, lighting, color direction
4. **ALWAYS describe:** the physical setup (desk, wall, surface, lighting source)
5. **Be specific** — vague prompts = bad results
6. **Request "photorealistic"** unless going for illustrated style

---

## Style-Specific Prompt Templates

### 1. Book Page Quote

**Vibe:** Professional, authoritative, timeless, vintage
**Physical setup:** Open book on a surface with warm lighting

**Template:**
```
Photorealistic image of an open vintage hardcover book laying flat on a
[dark wood / marble / leather] surface. The book pages are aged cream/off-white
with slightly yellowed edges. Warm golden lighting from the [left/right] side
creating soft shadows. The pages are blank with no text, no words, no letters,
no numbers. Slight page curl. [Optional: reading glasses / cup of coffee / pen
nearby]. Shallow depth of field, the book is in sharp focus. Square format,
1080x1080 pixels.
```

**Variations:**
- "Close-up of a single book page, cream paper with visible paper texture and fiber, warm side lighting, no text"
- "Stack of old books with the top one open, vintage library aesthetic, warm ambient lighting, no text on pages"
- "Leather-bound journal open on a mahogany desk, aged paper, candlelight warmth, no writing visible"

---

### 2. Notebook Infographic

**Vibe:** Casual, approachable, educational, hand-drawn energy
**Physical setup:** Notebook/sketchbook on a desk, flat lay

**Template:**
```
Photorealistic flat-lay photograph of an open spiral-bound notebook on a
[wooden desk / white desk / cork surface]. The notebook pages are cream/off-white
with no text and no writing. [Colored pens / markers / highlighters] scattered
around the notebook. Natural daylight from above. The notebook is centered in
frame. Clean, organized desk setup. Square format, 1080x1080 pixels. No text,
no words, no letters in the image.
```

**Variations:**
- "Open graph paper notebook on a light wood desk, colorful sticky notes around it, top-down view, no writing"
- "Sketchbook open to blank cream pages, watercolor paint set and brushes nearby, artistic flat lay, no text"
- "Dot-grid notebook on a minimal white desk, one green pen beside it, clean aesthetic, no writing on pages"

---

### 3. Simple Notebook Text

**Vibe:** Clean, minimal, easy to read
**Physical setup:** Lined notebook paper, simple setting

**Template:**
```
Photorealistic close-up of a lined notebook page on a [wooden desk / simple
surface]. The lined paper is white or light cream with blue horizontal lines
and a red margin line. The page is blank with no text, no handwriting, no words.
A single [pencil / pen] resting on the page. Soft natural lighting from a window.
Minimal, clean composition. Square format, 1080x1080 pixels.
```

**Variations:**
- "Single sheet of college-ruled paper on a pine desk, mechanical pencil beside it, soft window light, no writing"
- "Legal pad (yellow lined paper) on a dark desk, black pen nearby, professional minimal setup, no text"
- "Torn notebook page on a rustic wood surface, slightly crumpled edges, artistic feel, no writing"

---

### 4. Whiteboard Infographic

**Vibe:** Workshop-style, strategic, collaborative
**Physical setup:** Clean whiteboard, markers visible

**Template:**
```
Photorealistic photograph of a clean white whiteboard mounted on a wall. The
whiteboard surface is completely blank and clean with no text, no writing, no
markings. [3-4 colored Expo markers (purple, green, red, blue)] and a whiteboard
eraser sitting in the bottom tray. Slight reflection/sheen on the whiteboard
surface. Office lighting, slightly warm. Square format, 1080x1080 pixels. No
text, no words, no letters, no diagrams.
```

**Variations:**
- "Portable whiteboard on an easel in a modern office, blank surface, markers in tray, natural light from left"
- "Large wall-mounted whiteboard in a conference room, completely clean, multiple colored markers, overhead lighting"
- "Glass whiteboard (transparent) on a white wall, blank, dry erase markers on the ledge, modern office aesthetic"

---

### 5. Whiteboard Quote

**Vibe:** Bold, attention-grabbing, shareable
**Physical setup:** Clean whiteboard, minimal markers, space for large text

**Template:**
```
Photorealistic photograph of a clean white whiteboard. The entire whiteboard
surface is blank with no text, no writing, no markings whatsoever. A single
blue dry-erase marker and eraser at the bottom of the frame. Soft natural light
from a window creating a gentle diagonal shadow across the upper corner of the
board. Clean, minimalist composition with the whiteboard filling most of the
frame. Square format, 1080x1080 pixels.
```

**Variations:**
- "Small desk whiteboard (12x8 inches) on a wooden desk, one blue marker beside it, completely blank, warm lighting"
- "Whiteboard with thin aluminum frame, blank clean surface, single marker in tray, office background blurred"

---

## Highlight Color Reference (for Canva overlay)

After generating the background image in Gemini, use these colors in Canva:

```
PURPLE/LILAC (#c39bd3 or #d7bde2) — Headers, emphasis, key concepts — ALL styles
BLUE (#85c1e9 or #7fb3d8)         — Key words — whiteboard quotes
GREEN (#82e0aa or #58d68d)        — Checkmarks, positive items, solutions
RED (#ec7063 or #e74c3c)          — X marks, negative items, problems
YELLOW (#f9e79f or #f7dc6f)       — Important terms, final takeaways
```

---

## Common Mistakes to Avoid

1. **Asking for text in the image** — Gemini text looks terrible. Always add text in Canva.
2. **Using landscape instead of square** — LinkedIn feed is square (1080x1080).
3. **Vague prompts** — "a nice background" = bad. Always specify surface, lighting, objects.
4. **Inconsistent styles** — For multi-image sets, use same prompt base, vary only angle/objects.
5. **Forgetting "no text"** — Gemini WILL add random text if you don't explicitly exclude it.
6. **Over-cluttered scenes** — Keep minimal so text overlay in Canva stays readable.
7. **Wrong lighting** — Too dark = text unreadable. Too bright = washed out. Aim for soft, warm.
