# Visual Generator Agent

> Handles the entire visual pipeline with user-selected output modes.

## Prerequisites

- Post content must be finalized before visual generation
- Read `config/user-profile.md` for brand colors/preferences
- Read `config/strategy.md` for saved `visual_mode` preference

---

## Step 1 — Decide If Visual Is Needed

- Story / personal narrative: **NO visual** (text-only gets more reach)
- Hot take / opinion: **OPTIONAL** (single image only if it amplifies)
- Everything else: **YES**

If no visual needed, skip to LLM Research Pack (Step 4) and note "No visual — text-only post for maximum reach."

---

## Step 2 — Ask Visual Mode (MANDATORY)

Ask the user before generating anything:

> **"What do you need for this post's visual? Pick one or more:"**
>
> **A)** Ready-to-upload image — Gemini generates the complete image WITH text, download and post directly to LinkedIn. No Canva needed.
>
> **B)** Gemini elements + Canva — Gemini generates clean backgrounds/textures only (no text), you build the final visual in Canva.
>
> **C)** NotebookLM pack — Research prompts + slide deck structure + infographic blueprint for inspiration or content building.
>
> **You can pick multiple: A+C, B+C, A+B+C, etc.**

**Rules:**
- Accept any combination: A, B, C, A+B, A+C, B+C, A+B+C
- If user gives no answer → default to **B+C**
- Save selection to `config/strategy.md` as `visual_mode: [A/B/C/A+B/etc.]`
- Use saved preference as default next time (but always show the question so user can override)

---

## Step 3 — Select Visual Format + Image Style

Regardless of mode selected, always determine:

### Visual Format
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

### Image Style
Read `references/gemini-image-prompts.md`.

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

## Step 4 — Mode A: Ready-to-Upload Gemini Prompts (if A selected)

Generate 2-3 **complete image prompts** — the output image should be ready to upload directly to LinkedIn with no further editing needed.

**Critical difference from Mode B:** These prompts INCLUDE the actual text from the post rendered inside the image.

### For each prompt include:

**Scene/Background:** Describe the physical setup matching the chosen image style (book page, notebook, whiteboard, etc.)

**Text to render:** Extract the key message from the post — the hook, a key stat, or the core insight. Keep it short (max 10-15 words) so it reads clearly on mobile.

**Text placement:** Where on the image the text appears (center, upper third, over the page area, etc.)

**Text style:** Font style matching the image style (handwritten for notebook, marker for whiteboard, serif for book page)

**Highlight:** Specify which 1-2 words get a colored highlight box and what color (#c39bd3 purple, #85c1e9 blue, etc.)

**Mood/lighting/colors:** Full aesthetic description

**Dimensions:** Square format, 1080×1080 pixels, optimized for LinkedIn feed

**Output format template:**
```
Mode A — Ready to Upload

Image 1 (Primary):
[Full detailed prompt including: scene, text content to render, text placement,
text style, highlight colors, background mood, lighting, aspect ratio]

Image 2 (Variant):
[Same structure — different angle or layout variation]

Image 3 (Optional — different style):
[Alternative image style option if user wants to test]

Upload note: Download from Gemini → upload directly to LinkedIn post.
No Canva needed.
```

### Highlight Color Guide
```
PURPLE/LILAC (#c39bd3): Headers, emphasis — ALL styles
BLUE (#85c1e9):          Key words — whiteboard quotes
GREEN (#82e0aa):         Checkmarks, positive items
RED (#ec7063):           X marks, negative items
YELLOW (#f9e79f):        Important terms, takeaways
```

---

## Step 5 — Mode B: Gemini Background Elements + Canva Guide (if B selected)

Generate 2-3 **background-only prompts** — clean textures/surfaces with NO text, for use as Canva backgrounds.

Read `references/gemini-image-prompts.md` for style templates.

Each prompt must include:
- Physical setup matching the chosen image style
- Style/mood/aesthetic
- Color palette and lighting direction
- **MUST include:** "No text, no words, no letters, no numbers, no writing in the image"
- Aspect ratio: 1:1 (1080×1080) for LinkedIn feed

**Then generate the Canva Build Guide** (read `references/canva-visual-guide.md`):
- Template type: exact Canva search term
- Dimensions: 1080×1080 or 1080×1350
- Slide/frame count
- Layout per slide/frame
- Color palette (hex codes)
- Font pairing (style-specific)
- Where to place Gemini background images in layer stack
- Style-specific execution notes

### Font Pairings by Image Style
| Style | Fonts |
|---|---|
| 📖 Book Page | Libre Baskerville / EB Garamond (serif) |
| 📓 Notebook | Caveat / Patrick Hand / Kalam (handwritten) |
| ✏️ Simple Notebook | Caveat / Dancing Script (clean handwritten) |
| 📋 Whiteboard | Permanent Marker / Indie Flower (marker style) |
| 💬 Whiteboard Quote | Permanent Marker (large, bold) |

---

## Step 6 — Mode C: LLM Research Pack (if C selected)

This pack works with NotebookLM, ChatGPT, Gemini, or any LLM for research and content structure.

Generate all 3 items below with full detail. No vague prompts — every item must be copy-paste ready.

---

### C1) Search Query

```
## 🔍 Search Query

**Primary Research Objective:**
[1-sentence description of what you're trying to find and why]

**Master Query String:**
"[exact query — specific, targeted, quotation-mark wrapped where needed]"

**Secondary Query Variants (5–10):**
1. "[variant 1]"
2. "[variant 2]"
3. "[variant 3]"
4. "[variant 4]"
5. "[variant 5]"
6. "[variant 6 — optional]"
7. "[variant 7 — optional]"

**Time Filter:** Last 12 months (or specify if broader range needed)

**Geography Filter:** [Global / specific region if relevant to topic]

**Include Keywords:** [comma-separated list of must-have terms]

**Exclude Keywords:** [comma-separated list of terms to filter out]

**Source Priority (in order):**
1. Industry reports and research papers
2. Platform official blogs and announcements
3. Case studies with measurable outcomes
4. Expert practitioner posts and threads
5. News coverage from credible outlets

**Evidence Requirements:**
- Minimum 2 quantitative stats (percentages, numbers, growth rates)
- Minimum 1 real-world example or case study
- Minimum 1 counterpoint or contrarian perspective
- Recency: prefer sources from last 6-12 months
```

---

### C2) Slide Deck Prompt

```
## 📑 Slide Deck Prompt

**Role:** You are an expert LinkedIn content strategist and slide deck designer.

**Objective:** Create a [8–12]-slide LinkedIn carousel about [topic] for [user's audience].

**Audience Persona:** [description from user-profile — niche, pain points, expertise level]

**Tone:** [from user-profile tone]

**Slide Count Target:** [8–12 — based on content depth]

**Slide-by-Slide Structure:**

| Slide | Type | Title | Key Message | Visual Suggestion | Speaker Note |
|-------|------|-------|-------------|-------------------|--------------|
| 1 | Hook | [hook title] | [scroll-stopping claim] | [visual idea] | [what this slide must achieve] |
| 2 | Problem | [problem title] | [pain point articulation] | [visual idea] | [empathy moment] |
| 3 | Insight | [insight title] | [core insight] | [visual idea] | [the "aha" moment] |
| 4 | Framework | [framework title] | [system/method name] | [diagram idea] | [introduce the solution] |
| 5 | Step 1 | [step title] | [actionable instruction] | [visual idea] | [specificity matters here] |
| 6 | Step 2 | [step title] | [actionable instruction] | [visual idea] | [add a stat or example] |
| 7 | Step 3 | [step title] | [actionable instruction] | [visual idea] | [most important step] |
| 8 | Mistakes | [mistakes title] | [common errors to avoid] | [x-mark list] | [contrast good vs bad] |
| 9 | Action Steps | [action title] | [immediate next step] | [checklist visual] | [make it feel doable] |
| 10 | CTA | [CTA title] | [specific call to action] | [minimal, bold text] | [save/comment/follow] |

**Tone/Style Constraints:**
- Max 8 words per headline
- Max 3 bullet points per slide, max 10 words each
- No corporate jargon
- Each slide readable in under 5 seconds on mobile

**Output Format:**
Structured markdown table as shown above + one-line slide deck tagline for the post hook.
```

---

### C3) Infographic Prompt

```
## 🖼️ Infographic Prompt

**Role:** You are a visual content strategist specializing in LinkedIn infographics.

**Objective:** [specific objective for this post's infographic]

**Target Audience:** [from user-profile]

**Content Hierarchy:**
1. **Headline** (top): [main claim — max 8 words]
2. **Core Block 1**: [section title] — [key point + stat or example]
3. **Core Block 2**: [section title] — [key point + stat or example]
4. **Core Block 3**: [section title] — [key point + stat or example]
5. **Core Block 4** (optional): [section title] — [key point]
6. **Takeaway** (bottom): [1-sentence summary]
7. **CTA** (footer): [save / comment / follow]

**Data & Insight Instructions:**
- Pull [N] specific statistics from recent sources (last 12 months)
- Include at least 1 comparison (before/after, good/bad, old/new)
- Use real numbers — never use vague terms like "many" or "often"

**Visual Style:** [match to selected image style: minimal/handwritten/whiteboard]

**Color Palette:**
- Primary: [hex]
- Accent 1 (positive): [hex]
- Accent 2 (negative): [hex]
- Background: [hex]

**Typography:**
- Headline: [font name] — [size range]
- Body: [font name] — [size range]
- Hierarchy: Headline > Section titles > Body text (3 distinct sizes)

**Icon/Illustration:** Flat/line icons only, 1 per section block, consistent style

**Layout:** Portrait 1080×1350px — 40px margins — 24px block spacing — left-aligned body, centered headline

**Export:** PNG at 2x resolution, sRGB
```
