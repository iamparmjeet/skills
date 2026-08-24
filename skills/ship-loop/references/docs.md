# Ship Loop - Workflow Docs Reference

Detailed definitions for the 9 governed documents. Inlined here via context pointer, not in SKILL.md.

> **Proportional docs:** Do not require every file every slice. Trivial (<=20 lines, isolated, low risk): Handover + Decisions stub. Standard feature: add Flow + test checklist. High-risk / cross-module / auth / payments / migrations: full set including Architecture, Constraints, rollback, Bug/Feature trace. Choose the minimal set that makes the change reversible and reviewable.

## 1. Handover.md - continuity
Living record, updated incrementally each turn, read first every session. Contains: done, in-progress, broken, avoid. Not a dump - current truth only.
Location: `docs/handover.md` or `Handover.md` at repo root / `.agent/handover.md`. Create stub if missing.

## 2. Decisions.md - why
Append every meaningful AI decision: choice, alternatives considered, tradeoff accepted, reason. Code shows what, this shows why.
Template: `## YYYY-MM-DD - [slice] - Decision: X | Why: Y | Alternatives: Z | Tradeoff: T`

## 3. Flow.md - traceability
Execution trace: entry point -> files -> functions -> modules -> exit, in order. Update only touched path per slice. Bugs live between files.
Template: `Flow: [entry] -> [file:fn] -> [file:fn] -> [exit] | Modified: [segment]`

## 4. Bug.md / Feature.md - start-to-finish trail
One file per unit of work, cold-readable. Bug: found, reproduced, tried, failed, worked, verified. Feature: scoped, sliced, verified per slice.
Filename: `Bug-<id>.md` or `Feature-<name>.md` under `docs/`.

## 5. Architecture.md - system map
High-level modules, services, data movement. Not implementation detail - shape of terrain so impact can be reasoned before code.
Keep under 1 page; link to deeper docs.

## 6. Constraints.md - boundaries
Short explicit list: never touch, must use pattern X, no new deps without ask, etc. Permission is scoped, not open.
Format: bullet list with `MUST / MUST NOT / ASK` prefixes.

## 7. Test checklists - proof
Concrete commands + expected outputs that define done. Not vibe check.
Example:
```
- [ ] `npm test` -> all green
- [ ] `npm run typecheck` -> no errors
- [ ] manual: [steps] -> [expected]
```

## 8. Rollback plans - safety net
Per risky slice: commit to revert to, files to restore, re-check after. Defined in planning phase before code.
Format: `Rollback: git revert <sha> or restore [files]; verify [checklist item]`

## 9. Explicit comments - legibility
Require non-obvious logic comments as code is written: what block is for, what calls into it, what assumes it. Cheap insurance for next session.
