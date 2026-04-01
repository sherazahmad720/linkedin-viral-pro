# Visual Generator Agent

> Handles the entire visual pipeline: format selection, image style, Gemini/Canva/NotebookLM prompts.

## Prerequisites

- Post content must be finalized before visual generation
- Read `config/user-profile.md` for brand colors/preferences
- Read `config/strategy.md` for learned visual performance data (if exists)

---

## Step 1 — Decide If Visual Is Needed

- Story / personal narrative: **NO visual** (text-only gets more reach)
- Hot take / opinion: **OPTIONAL** (single image only if it amplifies)
- Everything else: **YES**

If no visual needed, skip to output and note "No visual — text-only post for maximum reach."

---

## Step 2 — Select Visual Format

Read `references/notebooklm-prompts.md` from skill folder.

| Post Type | Visual Format |
|---|---|
| List / tips | Infographic |
| Tutorial / how-to | Slide Deck |
| Framework / system | Slide Deck |
| Stats / comparison | Infographic |
| Story / personal | None |
| Hot take / opinion | None or single image |
| Case study | Slide Deck |
| Career lessons | Infographic or Slide Deck |
| Key insight / wisdom | Single image |
| Quick tip / one-liner | Single image |
| Bold statement | Single image |

---

## Step 3 — Select Image Style

Read `references/gemini-image-prompts.md` for style details.

| Content Type | Best Image Style | Why |
|---|---|---|
| Key insight / principle | 📖 Book Page Quote | Timeless, authoritative |
| List / framework / how-to | 📓 Notebook Infographic | Visual structure aids comprehension |
| One-liner / quick tip | ✏️ Simple Notebook Text | Maximum clarity, zero noise |
| Complex breakdown / data | 📋 Whiteboard Infographic | Workshop vibe, structured layout |
| Bold statement / hot take | 💬 Whiteboard Quote | Eye-catching, shareable |
| Comparison (A vs B) | 📓 Notebook Infographic | Side-by-side boxes work |
| Step-by-step process | 📋 Whiteboard Infographic | Numbered sections with markers |
| Personal wisdom | 📖 Book Page Quote | Gravitas and depth |
| Contrarian take | 💬 Whiteboard Quote | Bold + punchy = engagement |

**If `config/strategy.md` has performance data**: weight toward proven image style for this content type.

---

## Step 4 — Generate NotebookLM Block

Read `references/notebooklm-prompts.md`.

Output:
- **Paste content**: exact text user drops into NotebookLM
- **Search type**: Fast Search or Deep Research (with reasoning)
- **Search query**: exact query to type
- **Prompt**: for slide deck OR infographic (based on format chosen)

---

## Step 5 — Generate Gemini Image Prompts

Read `references/gemini-image-prompts.md`.

Generate 2-3 prompts, each must include:
- Subject/scene description specific to the chosen image style
- Style/mood/aesthetic
- Color palette
- Lighting direction
- What to EXCLUDE: "no text, no words, no letters, no numbers in image"
- Aspect ratio: 1:1 (1080x1080) for LinkedIn feed

### Highlight Color Guide (consistent across all styles)

```
PURPLE/LILAC (#c39bd3): Headers, emphasis, key concepts — ALL styles
BLUE (#85c1e9):          Key words — whiteboard quotes
GREEN (#82e0aa):         Checkmarks, positive items, solutions
RED (#ec7063):           X marks, negative items, problems
YELLOW (#f9e79f):        Important terms, final takeaways
```

---

## Step 6 — Generate Canva Build Guide

Read `references/canva-visual-guide.md`.

Output:
- **Template type**: exact search term in Canva
- **Dimensions**: exact size (1080x1080 for feed, 1080x1350 for portrait)
- **Slide/frame count**: number
- **Layout per slide**: brief description
- **Color palette**: hex codes matching the image style
- **Font pairing**: heading font + body font (style-specific)
- **Image placement**: where Gemini images go in the layer stack
- **Style execution notes**: specific to chosen image style

### Font Pairings by Image Style

| Style | Fonts |
|---|---|
| 📖 Book Page | Libre Baskerville / EB Garamond (serif) |
| 📓 Notebook | Caveat / Patrick Hand / Kalam (handwritten) |
| ✏️ Simple Notebook | Caveat / Dancing Script (clean handwritten) |
| 📋 Whiteboard | Permanent Marker / Indie Flower (marker style) |
| 💬 Whiteboard Quote | Permanent Marker (large, bold) |
