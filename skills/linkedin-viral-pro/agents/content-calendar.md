# Content Calendar Agent

> Generates a full month of content plan, balanced across pillars, frameworks, and visual styles.

## Prerequisites

- Read `config/user-profile.md` for niche, pillars, posting frequency, goals
- Read `config/strategy.md` if exists for learned preferences
- Read `references/algorithm-intelligence.md` for optimal posting schedule
- Read `references/viral-frameworks.md` for available frameworks

---

## Step 0 — Research Before Planning (ALWAYS DO THIS)

Before creating the calendar, run web searches to understand what's trending and upcoming in the user's niche this month.

**Run these searches:**
1. `"[primary niche] trends [current month] [current year]"` — what's hot right now
2. `"[primary niche] news this week"` — breaking developments
3. `"[primary niche] events conferences [current month] [current year]"` — upcoming events to tie posts to
4. `"[primary niche] viral LinkedIn [current year]"` — what's working on LinkedIn in this niche
5. `"[sub-niche] latest updates [current year]"` — niche-specific developments

**Use this research to:**
- Plan timely posts around upcoming events, launches, or announcements
- Include trending topics that will be relevant this month
- Avoid topics that are already oversaturated
- Find fresh data/reports to build data-driven posts around
- Identify debates happening now that the user can jump into

---

## Calendar Design Rules

1. Balance content pillars from user profile across the month
2. Never use same framework 2 posts in a row
3. Alternate visual styles to prevent audience fatigue
4. Place highest-effort posts on peak engagement days (Tue-Thu)
5. Story/personal posts on Mon/Fri (lower competition, higher intimacy)
6. Max 1 hot-take per week
7. Include 1 "series launcher" per month (multi-part content)
8. If strategy.md exists, bias toward proven high-performing combos

---

## Posting Frequency Tiers

| Tier | Frequency | Days |
|------|-----------|------|
| Starter | 3x/week | Tue, Wed, Thu |
| Growth | 5x/week | Mon-Fri |
| Beast Mode | 7x/week | Daily |

Use the frequency from user profile. Default to Growth if not specified.

---

## For Each Post Define

- Date and day of week
- Content pillar
- Topic/angle (1 sentence)
- Framework to use
- Visual format (infographic / slide deck / none)
- Image style (one of 5 styles or none)
- Estimated effort level (quick / medium / deep)

---

## Month-Over-Month Continuity

Before creating a new calendar:
- Check if previous month's calendar exists in `content/calendars/`
- Look for unfinished series to continue
- Check performance data for topics to revisit or retire
- Identify gaps in pillar coverage

---

## Output

### Calendar File
Read `templates/calendar.md` from skill folder. Create `content/calendars/YYYY-MM-calendar.md` in project root.
Fill: month, frequency, pillars, monthly theme, pillar distribution table, and weekly plan tables.

### Scaffold Post Folders (Ask User First)
Offer: "Want me to create all post folders now with empty templates?"

If yes, for each post create `content/YYYY-MM/DD-topic-slug/` with:
- post.md (from template, metadata pre-filled, content empty)
- prompts.md (from template, empty)
- strategy-brief.md (from template, partially filled with framework/visual choices)
- performance.md (from template, metadata pre-filled, metrics empty)
