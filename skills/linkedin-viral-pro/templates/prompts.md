---
date: {{YYYY-MM-DD}}
topic: {{topic}}
visual_format: {{format}}
image_style: {{style}}
visual_mode: {{A|B|C|A+B|A+C|B+C|A+B+C}}
---

# Visual Production Prompts

---

## Mode A — Ready-to-Upload Gemini Prompts

<!-- Present only if visual_mode includes A -->

> These prompts generate complete images WITH text rendered in — download from Gemini and upload directly to LinkedIn. No Canva needed.

**Image 1 (Primary):**
{{mode_a_prompt_1}}

**Image 2 (Variant):**
{{mode_a_prompt_2}}

**Image 3 (Optional — different style):**
{{mode_a_prompt_3}}

**Upload note:** Download from Gemini → upload directly to LinkedIn post.

---

## Mode B — Gemini Background Elements

<!-- Present only if visual_mode includes B -->

> These prompts generate clean backgrounds/textures with NO text — use as layers in Canva.

**Background 1:**
{{mode_b_prompt_1}}

**Background 2:**
{{mode_b_prompt_2}}

**Background 3 (optional):**
{{mode_b_prompt_3}}

### Canva Build Guide

| Field | Details |
|-------|---------|
| Template type | {{exact_canva_search_term}} |
| Dimensions | {{WxH}} |
| Slide/frame count | {{N}} |
| Color palette | {{hex_codes}} |
| Font pairing | {{heading_font}} + {{body_font}} |

**Layout per slide/frame:**
{{layout_description}}

**Where to place Gemini background images:**
{{image_placement_instructions}}

**Style-specific execution notes:**
{{notes_for_chosen_image_style}}

---

## Mode C — LLM Research Pack

<!-- Always present — works with NotebookLM, ChatGPT, Gemini, or any LLM -->

> Copy-paste ready. Use with NotebookLM, ChatGPT, Gemini, or any LLM.

---

### 🔍 Search Query

**Primary Research Objective:**
{{primary_research_objective}}

**Master Query String:**
{{master_query_string}}

**Secondary Query Variants:**
1. {{query_variant_1}}
2. {{query_variant_2}}
3. {{query_variant_3}}
4. {{query_variant_4}}
5. {{query_variant_5}}
6. {{query_variant_6}}
7. {{query_variant_7}}

**Time Filter:** {{time_filter}}

**Geography Filter:** {{geography_filter}}

**Include Keywords:** {{include_keywords}}

**Exclude Keywords:** {{exclude_keywords}}

**Source Priority:**
1. Industry reports and research papers
2. Platform official blogs and announcements
3. Case studies with measurable outcomes
4. Expert practitioner posts and threads
5. News coverage from credible outlets

**Evidence Requirements:**
- Min 2 quantitative stats (percentages, numbers, growth rates)
- Min 1 real-world example or case study
- Min 1 counterpoint or contrarian perspective
- Recency: prefer sources from last 6-12 months

---

### 📑 Slide Deck Prompt

**Role:** You are an expert LinkedIn content strategist and slide deck designer.

**Objective:** {{slide_deck_objective}}

**Audience Persona:** {{audience_persona}}

**Tone:** {{tone}}

**Slide Count Target:** {{slide_count}}

**Slide-by-Slide Structure:**

| Slide | Type | Title | Key Message | Visual Suggestion | Speaker Note |
|-------|------|-------|-------------|-------------------|--------------|
| 1 | Hook | {{hook_title}} | {{hook_message}} | {{hook_visual}} | {{hook_note}} |
| 2 | Problem | {{problem_title}} | {{problem_message}} | {{problem_visual}} | {{problem_note}} |
| 3 | Insight | {{insight_title}} | {{insight_message}} | {{insight_visual}} | {{insight_note}} |
| 4 | Framework | {{framework_title}} | {{framework_message}} | {{framework_visual}} | {{framework_note}} |
| 5 | Step 1 | {{step1_title}} | {{step1_message}} | {{step1_visual}} | {{step1_note}} |
| 6 | Step 2 | {{step2_title}} | {{step2_message}} | {{step2_visual}} | {{step2_note}} |
| 7 | Step 3 | {{step3_title}} | {{step3_message}} | {{step3_visual}} | {{step3_note}} |
| 8 | Mistakes | {{mistakes_title}} | {{mistakes_message}} | {{mistakes_visual}} | {{mistakes_note}} |
| 9 | Action Steps | {{action_title}} | {{action_message}} | {{action_visual}} | {{action_note}} |
| 10 | CTA | {{cta_title}} | {{cta_message}} | {{cta_visual}} | {{cta_note}} |

**Tone/Style Constraints:**
- Max 8 words per headline
- Max 3 bullet points per slide, max 10 words each
- No corporate jargon
- Each slide readable in under 5 seconds on mobile

**Slide Deck Tagline:** {{slide_deck_tagline}}

---

### 🖼️ Infographic Prompt

**Role:** You are a visual content strategist specializing in LinkedIn infographics.

**Objective:** {{infographic_objective}}

**Target Audience:** {{target_audience}}

**Content Hierarchy:**
1. **Headline:** {{infographic_headline}}
2. **Core Block 1:** {{block_1_title}} — {{block_1_content}}
3. **Core Block 2:** {{block_2_title}} — {{block_2_content}}
4. **Core Block 3:** {{block_3_title}} — {{block_3_content}}
5. **Core Block 4 (optional):** {{block_4_title}} — {{block_4_content}}
6. **Takeaway:** {{infographic_takeaway}}
7. **CTA:** {{infographic_cta}}

**Data & Insight Instructions:**
- {{stat_1}}
- {{stat_2}}
- {{comparison_point}}

**Visual Style:** {{visual_style_direction}}

**Color Palette:**
- Primary: {{color_primary}}
- Accent 1 (positive): {{color_accent_1}}
- Accent 2 (negative): {{color_accent_2}}
- Background: {{color_background}}

**Typography:**
- Headline: {{headline_font}} — {{headline_size}}
- Body: {{body_font}} — {{body_size}}

**Layout:** Portrait 1080×1350px — 40px margins — 24px block spacing — left-aligned body, centered headline

**Export:** PNG at 2x resolution, sRGB
