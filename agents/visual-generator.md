# Visual Generator Agent

> Handles the entire visual pipeline: format selection, image style, LLM Research Pack, Gemini prompts, and (conditionally) Canva guide.

## Prerequisites

- Post content must be finalized before visual generation
- Read `config/user-profile.md` for brand colors/preferences
- Read `config/strategy.md` for learned visual performance data and saved `canva_preference`
- Receive `canva_preference` (yes/no) from the calling agent (post-writer)

---

## Step 1 — Decide If Visual Is Needed

- Story / personal narrative: **NO visual** (text-only gets more reach)
- Hot take / opinion: **OPTIONAL** (single image only if it amplifies)
- Everything else: **YES**

If no visual needed, skip to LLM Research Pack (Step 4) and note "No visual — text-only post for maximum reach."

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

## Step 4 — Generate LLM Research Pack (ALWAYS — NO EXCEPTIONS)

This section is MANDATORY for every post. Generate all 3 items below with full detail. No vague prompts — every item must be copy-paste ready.

---

### A) Search Query

Output a fully detailed search brief:

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

### B) Slide Deck Prompt

Output a fully detailed slide deck brief for an LLM (NotebookLM, ChatGPT, Gemini, etc.):

```
## 📑 Slide Deck Prompt

**Role:** You are an expert LinkedIn content strategist and slide deck designer.

**Objective:** Create a [8–12]-slide LinkedIn carousel about [topic] for [user's audience from profile].

**Audience Persona:** [description from user-profile — niche, pain points, expertise level]

**Tone:** [from user-profile tone — e.g., conversational but authoritative, no-BS]

**Slide Count Target:** [8–12 slides — specify exact number based on content depth]

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
- Each slide must be readable in under 5 seconds on mobile

**Output Format:**
Return as a structured markdown table (as shown above) plus a one-line "slide deck tagline" that could be used as the post hook.
```

---

### C) Infographic Prompt

Output a fully detailed infographic brief for an LLM:

```
## 🖼️ Infographic Prompt

**Role:** You are a visual content strategist specializing in LinkedIn infographics.

**Objective:** Create a single-page LinkedIn infographic about [topic] for [user's audience].

**Target Audience:** [from user-profile]

**Content Hierarchy:**

1. **Headline** (top): [main claim — max 8 words, must work as standalone statement]
2. **Core Block 1**: [section title] — [key point + supporting stat or example]
3. **Core Block 2**: [section title] — [key point + supporting stat or example]
4. **Core Block 3**: [section title] — [key point + supporting stat or example]
5. **Core Block 4** (optional): [section title] — [key point]
6. **Takeaway** (bottom): [1-sentence summary of the core message]
7. **CTA** (footer): [specific action — save / comment / follow]

**Data & Insight Extraction Instructions:**
- Pull [N] specific statistics from recent sources (last 12 months preferred)
- Include at least 1 comparison (before/after, good/bad, old/new)
- Use real numbers wherever possible — never use vague terms like "many" or "often"

**Visual Style Direction:** [match to selected image style: minimal/corporate/handwritten/whiteboard]

**Color Palette:**
- Primary: [hex code from brand or image style guide]
- Accent 1: [hex code for positive/good items]
- Accent 2: [hex code for negative/bad items]
- Background: [hex code]

**Typography:**
- Headline font: [font name] — [size range]
- Body font: [font name] — [size range]
- Hierarchy: Headline > Section titles > Body text (3 distinct sizes)

**Icon/Illustration Guidance:**
- Use flat/line icons only (no photorealistic illustrations)
- 1 icon per section block, placed left of text
- Icon style must be consistent across all blocks

**Layout Specification:**
- Orientation: Portrait (1080×1350px for LinkedIn)
- Margins: 40px all sides minimum
- Section spacing: 24px between blocks
- Alignment: Left-aligned body text, centered headline and CTA
- Readability rule: Minimum 16pt body text for mobile legibility

**Final Output Requirements:**
1. Copy blocks for each section (headline-ready, not raw notes)
2. Visual notes per block (what the accompanying visual/icon should communicate)
3. Export recommendation: PNG at 2x resolution, sRGB color space
```

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

## Step 6 — Generate Canva Build Guide (CONDITIONAL)

**Only generate this section if `canva_preference = yes`.**
If `canva_preference = no`, skip entirely and do not mention it.

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
