---
name: lifeos-log
description: Log or summarise the user's day in their LifeOS daily note as plain entries (no extra YAML) — gym session summary, food by meal with macro estimates and a vegetarian micronutrient check, supplements and medication, weight, hunger, and learning (topic, minutes, goal, takeaway, next). Use when the user says "log", "/lifeos-log", "I ate…", "gym done", "took creatine", "studied X", or asks for a day/week total or what is missing from today's log.
---

# LifeOS Daily Log

Turn a casual message into structured entries in one LifeOS daily note. One day = one note; dashboards query it. Never create a parallel log note.

## Paths

- Vault: `/home/parm/Re-Learning/lifeos`
- Daily note: `10-19_Personal/17-Journal/Daily/YYYY/YYYY-MM-DD.md`
- Template: `00-09_System/03-Templates/Periodic/Daily.md`
- Health context (read once per session, before estimating or judging): `10-19_Personal/12-Health/Current Plan.md`, `10-19_Personal/12-Health/Diet and Supplements.md`
- Active goals: `10-19_Personal/16-Goals/Active/*.md`

## Workflow

1. **Resolve the date.** Default to today from `date +%F`. "Yesterday", "last night's dinner", or an explicit date overrides. Before ~04:00, ask whether the entry belongs to the previous day if it is ambiguous.
2. **Open the daily note.** If missing, create it from the template, resolving Templater expressions by hand and leaving prompted fields empty. Never add properties to the frontmatter and never edit templates: the daily note's YAML stays as the template defines it (only the existing `gym`, `steps`, `sleep_*`, `nutrition_adherence` may be set, and only when the user states them or the day is clearly done).
3. **Classify every fragment** of the message into gym, food (and which meal), supplements/medication, learning, weight, hunger, sleep, or steps. One message often covers several.
4. **Write plain entries** under a single `## Log` heading in the day's note (create it just before `## Local capture` if absent), using the bold-label bullet format in [references/entry-format.md](references/entry-format.md). The user may also have written entries by hand or as `#task`-style lines; read those too and never reformat them. Append; never delete what is already logged. If the user corrects an entry, edit that entry in place.
5. **Totals are computed, not stored.** Recompute the `Day estimate` line from all food entries in the note each time. Weekly or monthly totals are computed on request by reading the days' notes; never persist them as properties.
6. **Validate:** the frontmatter is unchanged (diff it) and still parses — `ruby -ryaml -e 'YAML.safe_load(File.read(ARGV[0]).split(/^---$/)[1], permitted_classes: [Date])' "<note>"` (system Python has no PyYAML).
7. **Reply briefly:** what was filed where, running totals vs targets (protein 140–160 g, calories ~2,200–2,400 kcal per Current Plan), and which slots are still empty today (e.g. "dinner, learning not logged yet"). No lecture.

## Rules by domain

### Gym
- LifeOS keeps a **session summary**; Gym Log (Gym Workout Tracker by Leap Fitness) owns sets, reps, loads and PRs. Do not copy set-by-set tables — if the user pastes them, summarise to main lifts plus a notable top set or PR.
- Write the split (push, pull, legs, upper, lower, full, cardio, rest), minutes and energy in the entry. Set the existing `gym: true` property only.
- Record energy (1–5) and any pain or injury verbatim. Pain that is sharp, persistent, or in the chest → note it and suggest checking with a clinician; don't diagnose.
- Evening incline walks go in the Gym section as cardio (duration, incline, speed) even on strength days.

### Weight
- A `**Weight:**` line for the morning weigh-in (after toilet, same conditions). Comment on the 7-day average from the last seven notes, never a single day.

### Food
- Slots: Breakfast, Lunch, Snacks, Dinner. Pre/post-workout food goes in Snacks unless the user names a meal. Infer the slot from words first, then from time of day.
- Context: vegetarian; no meat/fish/eggs at home; no onion/garlic at home.
- Estimate protein, carbs, fat, fiber and kcal per item with [references/food-estimates.md](references/food-estimates.md), then write per-meal totals. Prefix with `~`, round grams to 1 and kcal to 10. Add a qualitative `Micro check` line (B12, iron, calcium, vitamin D, omega-3) — never milligram numbers. Ask for quantity only when the guess would swing the day by >15 g protein or >200 kcal (e.g. "how much soya — 50 g or 100 g dry?"); otherwise assume a typical home portion and say so.
- Protein powder and pre-workout count as food for totals *and* are listed under Supplements.
- Record hunger and cravings in the `Hunger / cravings` line in the user's words; across days they show which meals under-fill during the cut.
- `nutrition_adherence` (existing property): `yes` / `partial` / `no` against Current Plan — set it only once dinner is logged or the user says the day is done.

### Supplements and medication
- Record exactly what the user says: name, dose, time. Never invent a dose; write `dose not stated`.
- Use the current stack in Current Plan / Diet and Supplements to recognise names (creatine, 1.M.R Vortex pre-workout, pea protein, vitamin D, Becozyme-C-Forte), but don't assume they were taken.
- Creatine total counts pre-workout creatine (target 3–5 g/day per Current Plan). Mention it if the day exceeds that; never recommend new supplements, dose changes, or stopping prescribed medication.

### Learning
- Each session = one plain bullet: topic, minutes, goal link, takeaway, next step, optional RemNote card idea.
- Map `goal` to an active goal note: DSA / React / interview / job → `[[Secure a Paid Full-Stack React Role]]`; Himrix, Schooly, KeyHQ, ContentOS, shipped features → `[[Ship Project Proof — KeyHQ and ContentOS]]`; English / IELTS → `[[Achieve English Fluency]]`; health/fitness reading → `[[Establish a Sustainable Health Rhythm]]`. Unclear → `none` and ask once.
- If the user gave no takeaway or next step, ask one short question for both; if they decline, write `—`.
- `card` = a one-line RemNote prompt idea, only when the takeaway is a fact or invariant worth spaced recall. Never write into RemNote or its export files.
- Don't tick DSA or other `#task` items automatically; offer to if the session clearly completed one.

## Boundaries

- Daily note body only. Don't touch templates, frontmatter schema, dashboards, `parm-context-v3/`, goals, or plans from this skill.
- All of this is `visibility: private`. Never send it to external services.
- Don't commit or push; the vault has its own sync.
