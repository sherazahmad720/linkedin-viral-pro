# LinkedIn Viral Pro

> Elite LinkedIn content engine + visual production pipeline. Engineers virality end-to-end with AI.

An [Agent Skill](https://agentskills.io) that turns any AI coding assistant into a full LinkedIn content production system. Write viral posts, generate image prompts, create content calendars, track performance, and learn what works — all from your terminal.

## Install

Always specify your tool with `-a` — otherwise it installs to `.agents/skills/` which most tools don't scan:

```bash
# Claude Code
npx skills add sherazahmad720/linkedin-viral-pro -a claude-code

# Gemini CLI
npx skills add sherazahmad720/linkedin-viral-pro -a gemini-cli

# Cursor
npx skills add sherazahmad720/linkedin-viral-pro -a cursor

# GitHub Copilot
npx skills add sherazahmad720/linkedin-viral-pro -a copilot
```

**Install globally** (available in every project on your machine):

```bash
npx skills add sherazahmad720/linkedin-viral-pro -a claude-code -g
```

**Or manually** (if you don't have npx):

```bash
git clone https://github.com/sherazahmad720/linkedin-viral-pro.git /tmp/lv

# Project-level (current project only)
cp -r /tmp/lv/skills/linkedin-viral-pro .claude/skills/linkedin-viral-pro

# Global (all projects)
cp -r /tmp/lv/skills/linkedin-viral-pro ~/.claude/skills/linkedin-viral-pro
```

## Compatible With

Works with any AI tool that supports the [Agent Skills](https://agentskills.io) standard:

| Tool | Status |
|------|--------|
| Claude Code | Native |
| OpenAI Codex | Compatible |
| GitHub Copilot | Compatible |
| Cursor | Compatible |
| Gemini CLI | Compatible |
| Windsurf | Compatible |
| Cline / Roo Code | Compatible |

## What It Does

This isn't a prompt template. It's a **complete production system** with 6 specialized agents, 7 reference databases, and 6 output templates.

### The Pipeline

```
YOU: "Write a post about [topic]"
  |
  v
AI AGENT
  |- Searches the web for latest news, stats, viral posts on your topic
  |- Selects viral framework + engineers the hook
  |- Writes the full post (optimized for LinkedIn algorithm)
  |- Picks visual format + image style
  |- Generates NotebookLM research prompts
  |- Generates Gemini image prompts
  |- Generates Canva build guide
  |- Scores the post (must hit 40/50 to ship)
  |- Saves everything to organized project files
  |
  v
YOU: Publish on LinkedIn, fill performance.md with results
  |
  v
AI AGENT: "Analyze" → reads your results, learns what works, improves future posts
```

## Commands

| Say This | What Happens |
|----------|-------------|
| "Write a post about [topic]" | Full post + visual prompts + strategy brief |
| "Create a content calendar" | Month of planned posts with frameworks + visuals |
| "What should I post?" | 5-10 content ideas based on your niche |
| "What's trending?" | Web search for trending topics in your niche |
| "Score this post" | 50-point analysis with specific fixes |
| "Analyze performance" | Reads your results, updates strategy with what works |
| "Generate visuals for [topic]" | Gemini prompts + Canva guide + NotebookLM instructions |

## How It Works

### First Run
The skill creates `config/user-profile.md` and asks you to fill it out — your niche, content pillars, goals, audience, tone. This personalizes all future output.

### Creating Posts
Every post creates a folder in `content/YYYY-MM/DD-topic-slug/` with:

```
content/2026-04/01-flutter-state-management/
  ├── post.md            ← The LinkedIn post (copy-paste ready)
  ├── prompts.md         ← NotebookLM + Gemini + Canva instructions
  ├── strategy-brief.md  ← Framework, timing, hashtags, follow-up plan
  └── performance.md     ← YOU fill: views, likes, comments at 1d/7d/30d
```

### The Learning Loop
1. You publish posts and fill `performance.md` with real metrics
2. You can paste LinkedIn analytics screenshots — the AI reads them
3. Say "analyze" and it builds a performance matrix:
   - Which **content pillars** get the most engagement
   - Which **frameworks** consistently perform
   - Which **image styles** work best with which content types
   - Best **posting times** for your audience
4. All future posts are informed by your real data

### Visual Production Pipeline

The skill supports 5 proven image styles:

| Style | Best For |
|-------|---------|
| Book Page Quote | Key insights, wisdom, principles |
| Notebook Infographic | Lists, frameworks, step-by-step |
| Simple Notebook Text | One-liners, quick tips |
| Whiteboard Infographic | Data, processes, breakdowns |
| Whiteboard Quote | Bold statements, hot takes |

For each post, you get:
- **NotebookLM instructions** — paste content + search query + slide/infographic prompt
- **Gemini image prompts** — 2-3 detailed prompts (no text in image, specific style/mood/lighting)
- **Canva build guide** — template, dimensions, fonts, colors, layout, image placement

## What's Inside

### 6 Agents

| Agent | Purpose |
|-------|---------|
| `post-writer` | Full post creation pipeline with web research |
| `content-calendar` | Monthly calendar balanced across pillars/frameworks |
| `post-analyzer` | 50-point scoring rubric (hook, emotion, algo, CTA, readability) |
| `visual-generator` | Gemini/Canva/NotebookLM prompt generation |
| `performance-analyzer` | Reads results + screenshots, updates strategy |
| `trend-scout` | Searches web for trending topics and news |

### 7 Reference Databases

| Reference | Content |
|-----------|---------|
| `viral-frameworks` | 17 proven post formulas with templates |
| `hook-library` | 90+ hooks by type (curiosity, bold claim, story, etc.) |
| `algorithm-intelligence` | LinkedIn algo mechanics 2024-2026 |
| `cta-arsenal` | 45 CTAs organized by goal |
| `notebooklm-prompts` | NotebookLM integration guide |
| `gemini-image-prompts` | Image prompt templates for 5 styles |
| `canva-visual-guide` | Canva execution per style |

### 6 Templates

| Template | Purpose |
|----------|---------|
| `post` | Post file structure with metadata |
| `prompts` | Visual production prompts |
| `performance` | Metrics tracking (1d/7d/30d) + visual analysis |
| `strategy-brief` | Per-post strategy with publish checklist |
| `calendar` | Monthly calendar with pillar distribution |
| `user-profile` | Creator profile (niche, pillars, goals, audience) |

## File Structure

```
linkedin-viral-pro/                       # GitHub repo root
├── README.md
├── LICENSE
└── skills/
    └── linkedin-viral-pro/               # The actual skill (installed by npx skills)
        ├── SKILL.md                      # Orchestrator
        ├── agents/
        │   ├── post-writer.md            # Full post pipeline
        │   ├── content-calendar.md       # Monthly planning
        │   ├── post-analyzer.md          # Post scoring
        │   ├── visual-generator.md       # Visual prompts
        │   ├── performance-analyzer.md   # Performance analysis
        │   └── trend-scout.md            # Trending topic search
        ├── references/
        │   ├── viral-frameworks.md       # 17 post formulas
        │   ├── hook-library.md           # 90+ hooks
        │   ├── algorithm-intelligence.md # LinkedIn algorithm
        │   ├── cta-arsenal.md            # 45 CTAs
        │   ├── notebooklm-prompts.md     # NotebookLM guide
        │   ├── gemini-image-prompts.md   # Gemini prompts
        │   └── canva-visual-guide.md     # Canva guide
        └── templates/
            ├── post.md                   # Post template
            ├── prompts.md                # Visual prompts template
            ├── performance.md            # Performance tracking
            ├── strategy-brief.md         # Strategy template
            ├── calendar.md               # Calendar template
            └── user-profile.md           # User profile template
```

## Requirements

- An AI tool that supports the [Agent Skills](https://agentskills.io) standard
- Web search capability (for trend-scout and post research features)
- File read/write permissions (for creating post folders and tracking files)

## Contributing

Found a better hook formula? Have a framework that works? PRs welcome.

## License

MIT

## Author

**Sherazi** ([@sherazahmad720](https://github.com/sherazahmad720))
