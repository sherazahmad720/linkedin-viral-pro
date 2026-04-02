# Post Writer Agent

> Complete instruction set for writing a single LinkedIn post with full production toolkit.

## Prerequisites

- User profile loaded from `config/user-profile.md` (project root)
- If `config/strategy.md` exists, read it for learned preferences (what works, what doesn't)
- Check `config/strategy.md` for saved `canva_preference` (yes/no) — use it as default if present

---

## Step 1 — Profile the Request

- Extract from user's message: topic, goal (followers/authority/leads/engagement), tone preference
- If user is vague, propose 3 angles based on their niche from user-profile
- Ask only if truly ambiguous — otherwise infer and proceed

---

## Step 1.5 — Research the Topic (ALWAYS DO THIS)

Before writing anything, search the web for the topic to ensure the post is informed, timely, and credible.

**Run these web searches:**
1. `"[topic] [current year]"` — latest developments, news, updates
2. `"[topic] statistics data [current year]"` — fresh stats to reference
3. `"[topic] LinkedIn viral post"` — see what's already performing well (avoid repeating, find gaps)
4. `"[topic] [user's niche] [current year]"` — niche-specific angle

**From the results, extract:**
- 1-2 fresh stats or data points to weave into the post (makes it credible)
- What angles have already been covered (so you can find a unique angle)
- Any breaking news or recent development that makes this timely
- Contrarian opinions or debates happening around this topic

**Use this research to:**
- Make the post timely (reference recent events/data)
- Find a unique angle (don't repeat what's already viral)
- Add credibility (real numbers > vague claims)
- Strengthen the hook (use a surprising finding from research)

---

## Step 2 — Select Framework

- Read `references/viral-frameworks.md` from skill folder
- Match framework to topic + goal using the selection matrix
- State which framework chosen and why (1 line)

---

## Step 3 — Engineer the Hook

- Read `references/hook-library.md` from skill folder
- Rules: max 10 words, NEVER start with "I"
- Hook types: Curiosity Gap, Bold Claim, Number Drop, Story Opener, Relatable Pain, Pattern Interrupt
- Generate 3 hook options, select strongest, explain why (1 line)

---

## Step 4 — Write the Full Post

Format rules:
- Short lines (2-4 words each)
- Blank line between every point
- ALL CAPS for key emphasis (LinkedIn has no bold/italic)
- Emotional arc: setup → tension → payoff
- Optimal length: 800-1200 characters
- End with a specific, debate-starting CTA (read `references/cta-arsenal.md`)
- Read `references/algorithm-intelligence.md` for format optimization

---

## Step 4.5 — Ask Visual Mode (MANDATORY)

Before generating visuals, ask:

> **"What do you need for this post's visual? Pick one or more:"**
>
> **A)** Ready-to-upload — Gemini generates the complete image WITH text. Download and post directly to LinkedIn.
>
> **B)** Gemini elements + Canva — Gemini generates clean backgrounds only (no text). You build the final image in Canva.
>
> **C)** NotebookLM pack — Research prompts + slide deck structure + infographic blueprint.
>
> **Pick any combination: A, B, C, A+B, A+C, B+C, A+B+C**

**Rules:**
- Accept any combination
- If no answer → default to **B+C**
- Save selection to `config/strategy.md` as `visual_mode`
- Pass the selection to `agents/visual-generator.md`

---

## Step 5 — Visual Production

- Delegate to `agents/visual-generator.md` — read it and follow its full instructions
- Pass the Canva preference from Step 4.5 so the visual agent knows whether to include Canva guide
- This produces: visual format decision, image style, LLM Research Pack, Gemini prompts, and (if yes) Canva guide

---

## Step 6 — Score the Post

- Read `agents/post-analyzer.md` scoring rubric
- Run inline scoring on the post you just wrote
- If score < 40/50: revise with specific fixes before finalizing
- If score >= 40/50: approve and note optional polish suggestions

---

## Step 7 — Create Output Files

Create folder `content/YYYY-MM/DD-topic-slug/` in project root (use today's date, slugify the topic).

### A) `post.md`
Read `templates/post.md` from skill folder. Fill all placeholders:
- Metadata: date, topic, pillar, framework, hook type, visual format, image style, score, status=draft
- The complete LinkedIn post (copy-paste ready)
- Hashtags (3-5)
- First comment content (links, additional context)

### B) `prompts.md`
Read `templates/prompts.md` from skill folder. Fill all placeholders:
- LLM Research Pack (all 3 sections — always present)
- Gemini image prompts (2-3 detailed prompts)
- Canva build guide (only if canva_preference = yes)

### C) `strategy-brief.md`
Read `templates/strategy-brief.md` from skill folder. Fill all placeholders:
- Framework, hook type, visual format, image style
- Best post time, hashtags, reach potential
- Follow-up post idea, engagement hack

### D) `performance.md`
Read `templates/performance.md` from skill folder. Fill metadata placeholders only:
- Date, topic, framework, hook type, visual format, image style, content pillar
- Leave all metric fields empty for user to fill later
- Set status to "pending"

---

## Final Output to User

Present in one response:

1. **The LinkedIn Post** (formatted, ready to copy)
2. **Strategy Brief** summary
3. **Mode A — Ready-to-Upload Gemini Prompts** ← only if A selected
   - 2-3 complete image prompts WITH text rendered in image
   - Upload note: download from Gemini → upload directly to LinkedIn
4. **Mode B — Gemini Backgrounds + Canva Guide** ← only if B selected
   - 2-3 background-only prompts (no text)
   - Full Canva build guide
5. **Mode C — LLM Research Pack** ← only if C selected
   - Search Query (fully detailed)
   - Slide Deck Prompt (fully detailed)
   - Infographic Prompt (fully detailed)
6. **Post Score** with breakdown (X/50)
7. Note: "Files saved to `content/YYYY-MM/DD-topic-slug/`"
8. Reminder: "Fill `performance.md` after publishing with your metrics at 1d, 7d, 30d"
