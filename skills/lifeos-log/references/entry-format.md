# Entry Format

Plain entries only. No dashboard queries depend on this format, so the AI reads it back in whatever form the user wrote it.

## Frontmatter

Do not add keys. Only the template's existing `gym`, `steps`, `sleep_hours`, `sleep_time`, `wake_time` and `nutrition_adherence` may be set, and `sleep_hours` is decimal hours, never `630`. `nutrition_adherence` takes `yes`, `partial` or `no`.

## Body sections

One `## Log` heading placed before `## Local capture`. Everything is plain text.

```markdown
## Log

**Weight:** 98.6 kg

**Gym**
- Push · 75 min · energy 4/5 — bench press (top 60 kg × 6), incline DB press, OHP, lateral raises, triceps pushdown
- Cardio · 30 min incline walk, 8%, 4.5 km/h
- Pain / recovery: mild left shoulder tightness on OHP

**Food**
- **Breakfast:** 1 banana (~1 P · 27 C · 0 F · ~110 kcal)
- **Lunch:** 2 roti, 1 katori dal, chaach (~16 P · 61 C · 7 F · ~400 kcal)
- **Snacks:** moong sprouts from 90 g dry, 20 g chana, cucumber; pea protein 1 scoop (~50 P · 70 C · 4 F · ~520 kcal)
- **Dinner:**
- **Day estimate:** ~67 g protein · 158 g carbs · 12 g fat · 30 g fiber · ~1,030 kcal (targets 140–160 g protein · ~2,200–2,400 kcal)
- **Hunger / cravings:** hungry by 17:00
- **Micro check:** B12 low (only chaach) · iron ok (moong, dal, chana) · calcium some · vitamin D none from food · omega-3 low

**Supplements**
- 07:40 — 1.M.R Vortex, 1 scoop (pre-workout)
- 09:45 — creatine 3 g
- Becozyme-C-Forte — dose not stated

**Learning**
- Two-pointer on sorted arrays, 45 min, [[Secure a Paid Full-Stack React Role]]. Takeaway: move the pointer at the smaller side; each step discards one candidate, so linear time. Next: Striver 3Sum. Card idea: why is two-pointer pair-sum linear on a sorted array?

### Conventions

- Meal line: items separated by `, ` or `; `, then one parenthesis with the meal's totals `(~P P · C C · F F · ~K kcal)`. Per-item numbers are worked out from the table but not written.
- `Day estimate` adds fiber. Carbs and fat have no plan target, so don't show one. `Micro check` follows the qualitative flags in food-estimates.md.
- Empty slot keeps its label with nothing after the colon.
- `Day estimate` line is rewritten on every update.
- Learning: one bullet per session; omit the card idea when there is no recall-worthy fact.
- The user's own hand-written entries (plain lines or task-style) take precedence; summarise them rather than rewriting them.
- Times in 24 h `HH:MM` when the user gave a time; otherwise omit.
