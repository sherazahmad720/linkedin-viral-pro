---
name: linkedin-viral-pro
metadata:
  author: Sherazi
  version: 2.0.0
compatibility: "Requires web search capability for trend-scout and post research features"
description: >
  Engineers viral LinkedIn posts end-to-end: writes post, selects visual format, generates
  Gemini image prompts, NotebookLM research prompts, and Canva build guides. Creates content
  calendars, scores posts, analyzes performance, and searches trending topics. Trigger for:
  LinkedIn post, go viral, write hook, infographic, slide deck, carousel, content calendar,
  image prompt, content strategy, image style, analyze performance, trending topics, post idea,
  plan my month, score post, what should I post, help me go viral, create a slide deck,
  what's trending, find me topics, latest news, book page style, whiteboard style, notebook style.
---

# LinkedIn Viral Pro — Orchestrator

> This skill engineers virality end-to-end. Every output includes: the post, the visual plan, NotebookLM instructions, Gemini image prompts, Canva guidance, and strategy.

## The Pipeline

```
CLAUDE (you are here)
  ↓ writes post + decides visual format + generates all prompts
NOTEBOOKLM
  ↓ user pastes Claude's content → researches deeper → builds structure
GEMINI
  ↓ user pastes image prompts → generates supporting visuals
CANVA
  ↓ user builds final visual using structure + images
LINKEDIN
  ↓ post + visual published together for maximum reach
```

---

## First-Run Protocol

1. Check if `config/user-profile.md` exists in the **PROJECT ROOT**
2. If NOT: read `templates/user-profile.md` from this skill folder, create `config/user-profile.md` in project root from it, tell the user to fill it out, and **STOP**. Do not proceed until profile is filled.
3. If YES: read it and load user context for all subsequent operations.
4. Also check if `config/strategy.md` exists — if yes, read it for learned preferences that should influence all decisions.

---

## Command Routing

### "Give me a post" / "Write a post about X" / "Post idea"
1. Read `config/user-profile.md` + `config/strategy.md` (if exists)
2. Read `agents/post-writer.md` from this skill folder — follow its FULL instructions
3. Create folder `content/YYYY-MM/DD-topic-slug/` in project root
4. Output files using templates: post.md, prompts.md, strategy-brief.md, performance.md
5. Present everything to user in one response

### "Create calendar" / "Plan my month" / "Content calendar"
1. Read `config/user-profile.md` + `config/strategy.md` (if exists)
2. Read `agents/content-calendar.md` — follow its full instructions
3. Create `content/calendars/YYYY-MM-calendar.md` in project root
4. Offer to scaffold individual post folders

### "Analyze this post" / "Score this" / "Rate my post"
1. Read `agents/post-analyzer.md` — follow its full instructions
2. Score the post, output fixes if below 40/50

### "Analyze performance" / "How am I doing" / "What's working"
1. Read `agents/performance-analyzer.md` — follow its full instructions
2. Scan all `content/**/performance.md` files in project root
3. Analyze any attached/pasted images or PDFs
4. Update `config/strategy.md` in project root

### "Generate visuals" / "Give me image prompts" / "Make an infographic"
1. Read `agents/visual-generator.md` — follow its full instructions

### "What's trending?" / "Find me topics" / "Latest news in [niche]"
1. Read `config/user-profile.md` + `config/strategy.md`
2. Read `agents/trend-scout.md` — follow its full instructions
3. Use WebSearch to find trending topics, viral posts, and breaking news in user's niche
4. Present structured trend report with post angles
5. Save top findings to `content/ideas/ideas.md` (append, don't overwrite)

### "Content ideas" / "What should I post"
1. Read `config/user-profile.md` + `config/strategy.md`
2. Read `agents/trend-scout.md` — run a quick trend search first
3. Read `references/viral-frameworks.md` + `references/hook-library.md`
4. Generate 5-10 content ideas with: topic, angle, framework, visual format
5. Save to `content/ideas/ideas.md` (append, don't overwrite)

---

## Global Rules (Apply to ALL outputs)

- Never start with "I am excited to share..."
- Never use corporate jargon (synergy, leverage, circle back)
- Never write paragraphs longer than 3 lines
- Never end with "Follow me for more"
- Never use more than 5 hashtags
- Never put external links in the post body (first comment only)
- Never generate a visual for a story/hot take post (kills reach)
- Never give Gemini a vague prompt — always include style, mood, colors, subject
- All file paths for references/agents/templates are RELATIVE to this skill folder

---

## Reference Files

| File | Purpose |
|---|---|
| `references/viral-frameworks.md` | 17 proven post formulas with examples |
| `references/hook-library.md` | 90+ hooks sorted by type and niche |
| `references/algorithm-intelligence.md` | LinkedIn algo mechanics 2024-2026 |
| `references/cta-arsenal.md` | 40+ CTAs that drive real engagement |
| `references/notebooklm-prompts.md` | NotebookLM paste content + prompts |
| `references/gemini-image-prompts.md` | Gemini image prompt formulas + styles |
| `references/canva-visual-guide.md` | Canva templates, dimensions, layouts |

## Agent Files

| File | Purpose |
|---|---|
| `agents/post-writer.md` | Full post creation pipeline |
| `agents/content-calendar.md` | Monthly calendar generation |
| `agents/post-analyzer.md` | Score posts (50-point rubric) |
| `agents/visual-generator.md` | Gemini/Canva/NotebookLM prompts |
| `agents/performance-analyzer.md` | Analyze results, update strategy |
| `agents/trend-scout.md` | Search trending topics & news |

## Template Files

| File | Purpose |
|---|---|
| `templates/post.md` | Post file structure |
| `templates/prompts.md` | Visual production prompts structure |
| `templates/performance.md` | Performance tracking (user fills) |
| `templates/strategy-brief.md` | Per-post strategy |
| `templates/calendar.md` | Monthly calendar structure |
| `templates/user-profile.md` | User context (first-run setup) |
