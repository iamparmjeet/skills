# Skill Composition

These skills form one system. Don't merge them — compose them.

```
learn-with-ai       learn-dsa-with-ai       ship-loop          knowledge-note-mapping
HOW I LEARN         HOW I PRACTICE DSA      HOW I SHIP         HOW I PRESERVE
repo grounding      problem contracts      execution          provenance
first attempt       bounded hints          verification       evidence + links
complete review     spaced review          continuity
```

## When to use which

- **learn-with-ai** — primary goal is understanding, design, or you writing code with guidance.
- **learn-dsa-with-ai** — primary goal is solving, reviewing, tracking, or revisiting a DSA problem.
- **ship-loop** — primary goal is changing, debugging, or shipping a repository.
- **knowledge-note-mapping** — primary goal is converting source material or completed learning into durable notes.

## When multiple apply

1. `learn-with-ai` governs repository grounding, useful task briefs, the learner's first attempt, comprehensive correction, and verification.
2. `learn-dsa-with-ai` specializes that workflow for DSA. Its hint sequence, algorithm-review criteria, and automatic DSA/LifeOS persistence take precedence over the general learning workflow.
3. `ship-loop` governs repository changes (risk tier, plan, slice, verify, handover).
4. `knowledge-note-mapping` governs knowledge extraction (source → atomic → MOC, verification).

Example — "Build auth and teach me while we do it":
```
learn-with-ai (inspect repo, plan, brief your first implementation)
      ↓
  ship-loop (per slice: constrain, plan, slice, verify, handover)
      ↓
knowledge-note-mapping (extract 1 atomic note + Decisions entry after slice verifies)
```

Example — "Help me solve and track this Two Sum exercise":
```
learn-with-ai (repo grounding, complete review, verification)
      ↓
learn-dsa-with-ai (DSA hint sequence, complexity review, solution + progress persistence)
```

## Rule

Do not duplicate artifacts owned by another skill. Decisions about *why* live in `Decisions.md` (ship-loop/learn-with-ai); reusable claims live as atomic notes (knowledge-note-mapping); DSA solutions and review scheduling live with `learn-dsa-with-ai`. Reference, don't copy.
