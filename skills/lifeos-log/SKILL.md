---
name: lifeos-log
description: Log the user's day into their LifeOS daily note from casual chat — gym session summary, food by meal (breakfast, lunch, snacks, dinner) with macro estimates and a vegetarian micronutrient check, supplements and medication taken, and learning (topic, minutes, linked goal, takeaway, next step). Use when the user says "log", "/lifeos-log", "I ate…", "had breakfast…", "gym done", "took creatine", "studied X for 40 min", or asks what is still missing from today's log.
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
2. **Open the daily note.**
   - Missing → create it from the template: resolve every Templater expression by hand (`date`, ISO `week` like `2026-W41`, `month`, `quarter`, `year`, `created`, `updated`), leave prompted fields (`sleep_time`, `wake_time`) empty unless the user gave them, and keep the rest verbatim.
   - Exists but lacks `## Health log` / `## Learning log` (older notes) → insert both sections exactly as in the template, immediately before `## Local capture`. Add missing YAML keys with empty values. Do not rewrite anything else.
3. **Classify every fragment** of the message into gym, food (and which meal), supplements/medication, learning, weight, sleep, or steps. One message often covers several.
4. **Write entries** using the formats in [references/entry-format.md](references/entry-format.md). Append to the right slot; never delete or overwrite what is already logged. If the user corrects an earlier entry, edit that entry in place.
5. **Recompute YAML totals** from the whole note, not just the new message: `protein_g`, `carbs_g`, `fat_g`, `fiber_g`, `calories_kcal`, `learning_minutes`, `supplements`, plus `gym`, `gym_split`, `gym_minutes`, `weight_kg`, `steps`, sleep fields when given. Set `updated:` to today.
6. **Validate:** YAML still parses — `ruby -ryaml -e 'YAML.safe_load(File.read(ARGV[0]).split(/^---$/)[1], permitted_classes: [Date])' "<note>"` (system Python has no PyYAML) — inline fields keep the `(key:: value)` shape, wikilinks point at existing notes.
7. **Reply briefly:** what was filed where, running totals vs targets (protein 140–160 g, calories ~2,200–2,400 kcal per Current Plan), and which slots are still empty today (e.g. "dinner, learning not logged yet"). No lecture.

## Rules by domain

### Gym
- LifeOS keeps a **session summary**; Gym Log (Gym Workout Tracker by Leap Fitness) owns sets, reps, loads and PRs. Do not copy set-by-set tables — if the user pastes them, summarise to main lifts plus a notable top set or PR.
- Set `gym: true`, `gym_split` (`push`, `pull`, `legs`, `upper`, `lower`, `full`, `cardio`, `rest`), `gym_minutes`.
- Record energy (1–5) and any pain or injury verbatim. Pain that is sharp, persistent, or in the chest → note it and suggest checking with a clinician; don't diagnose.
- Evening incline walks go in the Gym section as cardio (duration, incline, speed) even on strength days.

### Weight
- `weight_kg` = that morning's weigh-in (after toilet, same conditions), one decimal. Comment only on the 7-day average shown in `Health.md`, never a single day.

### Food
- Slots: Breakfast, Lunch, Snacks, Dinner. Pre/post-workout food goes in Snacks unless the user names a meal. Infer the slot from words first, then from time of day.
- Context: vegetarian; no meat/fish/eggs at home; no onion/garlic at home.
- Estimate protein, carbs, fat, fiber and kcal per item with [references/food-estimates.md](references/food-estimates.md), then write per-meal totals. Prefix with `~`, round grams to 1 and kcal to 10. Add a qualitative `Micro check` line (B12, iron, calcium, vitamin D, omega-3) — never milligram numbers. Ask for quantity only when the guess would swing the day by >15 g protein or >200 kcal (e.g. "how much soya — 50 g or 100 g dry?"); otherwise assume a typical home portion and say so.
- Protein powder and pre-workout count as food for totals *and* are listed under Supplements.
- `nutrition_adherence`: `yes` when the day roughly matches Current Plan, `partial`, or `no` — set it only once dinner is logged or the user says the day is done.

### Supplements and medication
- Record exactly what the user says: name, dose, time. Never invent a dose; write `dose not stated`.
- Use the current stack in Current Plan / Diet and Supplements to recognise names (creatine, 1.M.R Vortex pre-workout, pea protein, vitamin D, Becozyme-C-Forte), but don't assume they were taken.
- Creatine total counts pre-workout creatine (target 3–5 g/day per Current Plan). Mention it if the day exceeds that; never recommend new supplements, dose changes, or stopping prescribed medication.
- `supplements` YAML is a lowercase list of item names taken that day.

### Learning
- Each session = one bullet with `learn`, `learn_min`, `goal`, `takeaway`, `next`, optional `card`.
- Map `goal` to an active goal note: DSA / React / interview / job → `[[Secure a Paid Full-Stack React Role]]`; Himrix, Schooly, KeyHQ, ContentOS, shipped features → `[[Ship Project Proof — KeyHQ and ContentOS]]`; English / IELTS → `[[Achieve English Fluency]]`; health/fitness reading → `[[Establish a Sustainable Health Rhythm]]`. Unclear → `none` and ask once.
- If the user gave no takeaway or next step, ask one short question for both; if they decline, write `—`.
- `card` = a one-line RemNote prompt idea, only when the takeaway is a fact or invariant worth spaced recall. Never write into RemNote or its export files.
- Don't tick DSA or other `#task` items automatically; offer to if the session clearly completed one.

## Boundaries

- Daily note only. Don't touch `parm-context-v3/`, goals, templates, or plans from this skill.
- All of this is `visibility: private`. Never send it to external services.
- Don't commit or push; the vault has its own sync.
