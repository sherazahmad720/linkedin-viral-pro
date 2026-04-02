# NotebookLM Integration Guide

> NotebookLM sits between Claude and Canva in the pipeline. It takes Claude's post content, researches deeper, and outputs structured content for visual creation.

---

## What NotebookLM Does in the Pipeline

1. Takes the LinkedIn post content Claude generated
2. Researches the topic for additional data, stats, examples
3. Structures the output specifically for visual creation (slides or infographic)
4. User takes this structured output into Canva

---

## When to Use Fast Search vs Deep Research

### Fast Search
- **Use when:** Post is opinion-based, personal story, hot take, or doesn't need external data
- **Time:** ~30 seconds
- **Best for:** Whiteboard quotes, simple notebook text, personal brand posts

### Deep Research
- **Use when:** Post includes stats, frameworks, comparisons, or benefits from supporting data
- **Time:** ~2-5 minutes
- **Best for:** Infographics, slide decks, case studies, data-driven posts

---

## Paste Content Format

Structure the content you tell the user to paste into NotebookLM:

```
TOPIC: [exact topic from the post]

POST SUMMARY: [2-3 sentence summary of the LinkedIn post]

KEY POINTS:
1. [point 1]
2. [point 2]
3. [point 3]
4. [point 4]
5. [point 5]

VISUAL FORMAT NEEDED: [infographic / slide deck]

SPECIFIC DATA NEEDED: [what additional stats/examples would strengthen this]

TARGET AUDIENCE: [who this content is for]
```

---

## Search Query Formulas

### For Stats/Data Posts
`"[topic] statistics [current year] research data"`

### For Framework Posts
`"[topic] best practices framework methodology"`

### For Comparison Posts
`"[option A] vs [option B] comparison analysis [year]"`

### For Trend Posts
`"[topic] trends [year] predictions industry report"`

### For Tutorial Posts
`"[topic] step by step guide best practices examples"`

### For Case Study Posts
`"[topic] case study results metrics [year]"`

---

## Visual Format Decision Tree

```
Is the post a personal story or hot take?
├── YES → No visual needed (text-only post)
└── NO → Continue

Does the post have 5+ distinct points, steps, or items?
├── YES → Is it sequential/tutorial?
│   ├── YES → SLIDE DECK
│   └── NO → INFOGRAPHIC
└── NO → Is it a bold statement or quote?
    ├── YES → SINGLE IMAGE (use image style selection)
    └── NO → INFOGRAPHIC or SLIDE DECK based on complexity
```

---

## Slide Deck Prompts (paste into NotebookLM)

### For Tutorial / How-To
```
Create a [N]-slide structure for a LinkedIn carousel about [topic].
Each slide should have:
- A headline (max 8 words)
- 2-3 bullet points (max 10 words each)
- A visual suggestion

Slide 1 = hook (attention-grabbing question or stat)
Slides 2-[N-1] = each step with actionable detail
Last slide = CTA + summary takeaway

Focus on actionable, practical steps. No fluff.
```

### For Framework / System
```
Create a [N]-slide structure breaking down [framework name].

Slide 1: The problem this framework solves (hook)
Slide 2: Why current solutions fail
Slides 3-[N-1]: Each step/component of the framework with:
  - Step name
  - What to do (1-2 bullets)
  - Common mistake to avoid
Last slide: Results + CTA

Make each slide self-contained and valuable.
```

### For Comparison
```
Create a [N]-slide structure comparing [A] vs [B].

Slide 1: The question — "[A] or [B]?"
Slide 2-3: [Option A] — pros, cons, best use case
Slide 4-5: [Option B] — pros, cons, best use case
Slide 6: Side-by-side verdict table
Last slide: Recommendation + CTA

Include specific data points where possible.
```

### For Case Study
```
Create a [N]-slide structure for a case study about [project/result].

Slide 1: The impressive result (big number as hook)
Slide 2: The challenge/problem
Slide 3-5: What was done (step by step)
Slide 6: Results breakdown (before vs after numbers)
Last slide: Key takeaway + CTA

Focus on specific, measurable outcomes.
```

### For Listicle
```
Create a [N]-slide structure for "[N] [things about topic]".

Slide 1: Hook — the number + why this matters
Slides 2-[N]: One item per slide with:
  - Item name/title
  - Why it matters (1 sentence)
  - How to apply it (1 sentence)
Last slide: Summary + CTA

Each slide should be skimmable in 3 seconds.
```

---

## Infographic Prompts (paste into NotebookLM)

### For List Posts
```
Create a single-page infographic structure for [topic] with [N] key points.

Each point needs:
- A short headline (4-6 words)
- One supporting fact or stat
- An icon suggestion

Include:
- A header section with the main title
- A footer with source/CTA
- Visual hierarchy: most important point first

Layout: vertical flow, scannable in 10 seconds.
```

### For Process / Steps
```
Create a flowchart-style infographic for [process].

Show [N] steps in sequence with:
- Step number
- Step name (3-5 words)
- Brief description (1 sentence)
- Connection arrow to next step

Starting state: [starting condition]
End result: [desired outcome]

Layout: top-to-bottom or left-to-right flow.
```

### For Stats / Data
```
Create a data-driven infographic about [topic].

Include [N] key statistics with:
- The number (large, bold)
- Context sentence (what it means)
- Source (if available)

Layout: scannable vertical arrangement.
Most shocking stat at the top, supporting data below.
```

### For Comparison
```
Create a side-by-side comparison infographic: [A] vs [B].

Include [N] comparison criteria:
- Criteria name
- [A] rating/result (with checkmark/x)
- [B] rating/result (with checkmark/x)

Add a "Winner" section at bottom with verdict.
Layout: two-column with clear visual indicators.
```
