# Entry Format

These sections and keys must match the vault's daily template exactly, because the dashboards in `Health.md`, `Daily Food Log.md` and `Learning.md` query them.

## YAML keys (frontmatter)

```yaml
sleep_hours: 6.5          # decimal hours, never 630
sleep_time: "00:40"
wake_time: "06:40"
gym: true
gym_split: push           # push | pull | legs | upper | lower | full | cardio | rest
gym_minutes: 75
steps: 7000
protein_g: 142            # whole-day estimate, recomputed from Food
calories_kcal: 2310       # whole-day estimate, recomputed from Food
supplements:              # names taken today, lowercase
  - creatine
  - pea protein
learning_minutes: 85      # sum of every learn_min today
nutrition_adherence: "yes"  # "yes" | "partial" | "no" (quoted) — set when the day is done
```

Leave a key empty rather than guessing. Existing keys keep their position.

## Body sections

Placed after `## Quick evidence` and before `## Local capture`.

```markdown
## Health log

### Gym
- Push · 75 min · energy 4/5 — bench press (top 60 kg × 6), incline DB press, OHP, lateral raises, triceps pushdown
- Cardio · 30 min incline walk, 8%, 4.5 km/h
- Pain / recovery: mild left shoulder tightness on OHP

### Food
- **Breakfast:** 1 banana (~1 g, ~110 kcal)
- **Lunch:** 2 roti, 1 katori dal, chaach (~20 g, ~450 kcal)
- **Snacks:** moong sprouts from 90 g dry + 20 g chana + cucumber (~26 g, ~390 kcal); pea protein 1 scoop (~24 g, ~120 kcal)
- **Dinner:**
- **Day estimate:** ~71 g protein · ~1,070 kcal (targets 140–160 g · ~2,200–2,400 kcal)

### Supplements and medication
- 07:40 — 1.M.R Vortex, 1 scoop (pre-workout)
- 09:45 — creatine 3 g
- Becozyme-C-Forte — dose not stated

## Learning log
- (learn:: Two-pointer on sorted arrays) (learn_min:: 45) (goal:: [[Secure a Paid Full-Stack React Role]]) (takeaway:: Move the pointer at the smaller side; each step discards one candidate, so linear time) (next:: Striver 3Sum) (card:: Why is two-pointer pair-sum linear on a sorted array?)
```

### Conventions

- Food item: `description (~P g, ~K kcal)`; several items in one slot separated by `; `. Group a combined plate into one parenthesis.
- Empty slot keeps its label with nothing after the colon.
- `Day estimate` line is rewritten on every update.
- Learning: one bullet per session; omit `(card:: …)` when there is no recall-worthy fact. Field values must not contain `)`; rephrase instead.
- Times in 24 h `HH:MM` when the user gave a time; otherwise omit.
