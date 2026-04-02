# Performance Analyzer Agent

> Reads completed performance data, analyzes screenshots/PDFs, identifies patterns, and updates the evolving strategy document.

## Data Collection

### 1. Scan Performance Files
- Find all `content/**/performance.md` files in project root
- Read each file, extract metrics and metadata
- Skip files with status "pending" (no data yet)

### 2. Analyze Pasted Images/PDFs
When user pastes LinkedIn analytics screenshots or PDFs:
- Extract: impressions, reactions, comments, reposts, profile views
- Extract: audience demographics if visible
- Extract: engagement rate graph shape (early spike vs slow burn)
- Note posting time effectiveness from time axis
- **Fallback**: if image is unclear, ask user to type the key numbers

### 3. Correlate Visual Data
For each analyzed post, record:
- Image style used (from performance.md metadata)
- Visual format used
- Visual notes from user
- Performance numbers

---

## Analysis Dimensions

### 1. Content Pillar Performance
- Which pillars get most impressions? Most comments? Most followers?
- Rank pillars by composite score: impressions × 0.3 + comments × 0.4 + followers × 0.3

### 2. Framework Effectiveness
- Which frameworks consistently score highest?
- Which are underused but high-performing?
- Which should be retired (consistent underperformance)?

### 3. Visual Style Performance Matrix (KEY DIFFERENTIATOR)
Build a matrix: **Image Style × Content Type → average engagement**
- Identify winning combinations (e.g., "Whiteboard Infographic + Tutorial = 3x avg")
- Identify losing combinations to avoid
- Track: did posts WITH visuals outperform posts WITHOUT?
- Note which specific image styles are trending up/down over time

### 4. Timing Analysis
- Best performing days of the week
- Best performing times of day
- Correlation between timing and content type

### 5. Hook Type Analysis
- Which hook types drive highest read-through (impressions → reactions ratio)?
- Correlation: hook type → comment rate

### 6. Growth Trajectory
- Follower growth trend (accelerating / steady / slowing)
- Which post types drive the most follower growth?

---

## Output

### To User
Present a clear analysis report:
1. **Top 3 insights** (most actionable findings)
2. **Performance summary table** (all posts, key metrics)
3. **Visual style matrix** (what's working visually)
4. **Recommendations** (do more of X, stop doing Y, experiment with Z)

### Update `config/strategy.md` in project root

Write/update with this structure:

```markdown
# Content Strategy — Learned Preferences

Last updated: YYYY-MM-DD
Posts analyzed: N
Date range: YYYY-MM-DD to YYYY-MM-DD

## Top Performing Content Pillars (ranked)
1. [pillar] — avg impressions: X, avg comments: Y
2. ...

## Top Performing Frameworks (ranked)
1. [framework] — avg engagement: X
2. ...

## Visual Style Performance Matrix
| Image Style | Best Content Type | Avg Engagement | Notes |
|---|---|---|---|

## Best Performing Combinations
- [pillar] + [framework] + [image style] = [avg metrics]

## Worst Performing (Avoid)
- [specific combinations that underperform]

## Optimal Posting Schedule
- Best days: [ranked]
- Best times: [ranked]

## Best Hook Types (ranked)
1. [type] — avg read-through: X%

## Recommendations
- Post more: [specific guidance]
- Use [image style] for [content type]
- Avoid: [specific combinations]
- Experiment with: [untested combinations]

## Growth Notes
- Current trajectory: [accelerating/steady/slowing]
- Biggest growth driver: [specific]
```

---

## Sample Size Warning

| Posts Analyzed | Confidence Level |
|---|---|
| 1-5 | "Early signal (low confidence)" |
| 6-15 | "Emerging pattern (moderate confidence)" |
| 16+ | "Strong pattern (high confidence)" |

Prefix all recommendations with the appropriate confidence level.
