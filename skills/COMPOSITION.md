# Skill Composition

Your three skills form one system. Don't merge them — compose them.

```
              learn-with-ai          ship-loop          knowledge-note-mapping
              HOW I LEARN            HOW I SHIP         HOW I PRESERVE
              understanding          execution          provenance
              design                 verification       evidence + links
              ownership              continuity
```

## When to use which

- **learn-with-ai** — primary goal is understanding, design, or you writing code with guidance.
- **ship-loop** — primary goal is changing, debugging, or shipping a repository.
- **knowledge-note-mapping** — primary goal is converting source material or completed learning into durable notes.

## When multiple apply

1. `learn-with-ai` governs learning/ownership (gates, progressive disclosure, teach-back).
2. `ship-loop` governs repository changes (risk tier, plan, slice, verify, handover).
3. `knowledge-note-mapping` governs knowledge extraction (source → atomic → MOC, verification).

Example — "Build auth and teach me while we do it":
```
learn-with-ai (clarify, model, you design)
      ↓
  ship-loop (per slice: constrain, plan, slice, verify, handover)
      ↓
knowledge-note-mapping (extract 1 atomic note + Decisions entry after slice verifies)
```

## Rule

Do not duplicate artifacts owned by another skill. Decisions about *why* live in `Decisions.md` (ship-loop/learn-with-ai); reusable claims live as atomic notes (knowledge-note-mapping); understanding lives in teach-back. Reference, don't copy.
