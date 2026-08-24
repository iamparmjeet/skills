# Handover Template (5 lines, 30 seconds)

Copy to Handover.md at session end/start.

```
## Handover - YYYY-MM-DD HH:MM - model: <name/version>
Done: [what shipped + commit]
In-progress: [current slice + next step]
Broken: [known failures + reproduction]
Avoid: [paths/patterns to not touch]
Next: [exact first action for next session]
```

Rules:
- Overwrite, do not append - keep only current truth.
- Pin model/version that made last decision (Traceability).
- Next session must be able to start from this file alone.
