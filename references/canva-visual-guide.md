# Canva Visual Execution Guide

> Canva is the final step in the pipeline. Gemini backgrounds + NotebookLM structure + Canva layout = finished visual.

---

## Dimensions for LinkedIn

| Format | Size | Use Case |
|--------|------|----------|
| Feed Post (Square) | 1080 x 1080 px | Single image posts, quotes |
| Feed Post (Portrait) | 1080 x 1350 px | Taller infographics (more content space) |
| Carousel/Document | 1080 x 1080 px per slide | Multi-slide content |
| Banner/Cover | 1584 x 396 px | Profile background |

**Default: 1080 x 1080 px** unless content needs more vertical space.

---

## Template Search Terms by Image Style

| Image Style | Search in Canva |
|---|---|
| Book Page Quote | "book page mockup" or "vintage book template" |
| Notebook Infographic | "notebook infographic" or "sketchbook template" |
| Simple Notebook Text | "notebook page" or "lined paper template" |
| Whiteboard Infographic | "whiteboard presentation" or "whiteboard template" |
| Whiteboard Quote | "whiteboard quote" or "quote on whiteboard" |

**Pro tip:** Often better to start with a blank 1080x1080 canvas and place the Gemini image as background, rather than using a Canva template.

---

## Layer Stack (Same for All Styles)

1. **Bottom layer:** Gemini-generated background image (set to fill canvas)
2. **Middle layer:** Highlight rectangles (colored, 40-60% opacity)
3. **Top layer:** Text elements (headings, body, bullets)
4. **Decorative layer:** Icons, arrows, checkmarks, dividers

---

## Style-Specific Execution

### Book Page Quote

| Property | Value |
|----------|-------|
| Background | Gemini book page image |
| Text placement | Centered on the book page area |
| Font | Libre Baskerville or EB Garamond (serif) |
| Heading size | 36-42pt |
| Body size | 24-28pt |
| Text color | Dark gray (#333333), not pure black |
| Highlight | Purple/lilac rounded rectangle, 50% opacity |

**Layout:**
- Top: small label or category text
- Center: the quote/insight (largest text)
- Bottom: author name or source

**Tips:**
- Keep text within the visible page area
- Don't extend text to book edges
- Use dark gray text for a softer, vintage feel

---

### Notebook Infographic

| Property | Value |
|----------|-------|
| Background | Gemini notebook/sketchbook image |
| Text placement | Within notebook page boundaries |
| Font | Caveat, Patrick Hand, or Kalam (handwritten) |
| Heading size | 32-38pt |
| Body size | 20-24pt |
| Label size | 16-18pt |

**Color coding:**
- Headers: Purple (#c39bd3) highlight rectangle behind text
- Good items: Green (#82e0aa) checkmark + text
- Bad items: Red (#ec7063) X mark + text
- Key terms: Yellow (#f9e79f) highlight

**Layout:**
- Title at top (purple highlighted)
- Content in sections/boxes (hand-drawn style borders)
- Arrows between sections for flow
- Numbered items for steps

**Tips:**
- Add hand-drawn style elements (Canva has "hand-drawn" frames and shapes)
- Leave some "messiness" — too clean kills the notebook vibe
- Use multiple highlight colors — notebooks should feel colorful

---

### Simple Notebook Text

| Property | Value |
|----------|-------|
| Background | Gemini lined paper image |
| Text placement | Aligned with paper lines |
| Font | Caveat or Dancing Script (clean handwritten) |
| Font size | 28-34pt (one consistent size) |
| Highlight | Single purple/pink rectangle, 40-50% opacity |

**Layout:**
- One powerful idea centered on the page
- Max 3-4 lines of text
- Highlight only 1-2 key words

**Tips:**
- Less is more — this style is about clarity
- Try to align text baseline with notebook lines
- ONE highlight color only — don't overcomplicate

---

### Whiteboard Infographic

| Property | Value |
|----------|-------|
| Background | Gemini whiteboard image |
| Text placement | Structured sections across board |
| Font | Permanent Marker or Indie Flower (marker style) |
| Heading size | 36-42pt |
| Subheading size | 24-28pt |
| Body size | 18-22pt |

**Color coding:**
- Section headers: Purple (#c39bd3) rectangle behind text
- Positive items: Green checkmarks
- Negative items: Red X marks
- Key terms: Yellow highlight
- Body text: Dark blue or black

**Layout:**
- Clear sections with headers (2-4 sections)
- Bulleted or numbered lists within sections
- Divider lines between sections
- Header boxes for each section (colored background)

**Tips:**
- Use ALL CAPS for headers (whiteboard style)
- Add title/topic banner at the very top
- Keep marker tray visible at bottom for realism
- Add hand-drawn arrows between related sections

---

### Whiteboard Quote

| Property | Value |
|----------|-------|
| Background | Gemini whiteboard image |
| Text placement | Large, centered on whiteboard |
| Font | Permanent Marker (large, bold) |
| Font size | 42-56pt |
| Highlight | Blue (#85c1e9) rectangles, 50% opacity |

**Layout:**
- Quote fills most of the whiteboard space
- 2-3 sentences maximum
- Key words highlighted in blue
- Optional: small attribution at bottom right

**Tips:**
- Highlight the words that carry the most punch
- Leave some whiteboard space (don't fill every inch)
- Use line breaks that create rhythm when reading

---

## Export Settings

| Setting | Value |
|---------|-------|
| Format | PNG (quality) or JPG (smaller file) |
| Quality | Highest available |
| File naming | `YYYY-MM-DD-topic-slug-[style].png` |

---

## Multi-Slide Carousel Rules

1. **First slide** = hook (biggest, boldest text — this is the thumbnail)
2. Each slide readable in **3-5 seconds**
3. **Consistent style** across ALL slides (same font, colors, layout)
4. **Last slide** = CTA + what to do next
5. **5-10 slides** optimal (fewer = too thin, more = drop-off)
6. Every slide should make sense on its own if screenshotted
7. Use **slide numbers** (small, bottom corner) so people know there's more
8. **Swipe cue** on first slide: arrow or "Swipe →" text
