---
name: ship-loop
description: Govern shipping AI-assisted code with traceable workflow. Use when building a feature, fixing a bug, or resuming from Handover.md with rollback and verification.
---

# Ship Loop

Govern AI-assisted execution so every change is scoped, traceable, and reversible. AI never writes blind.

## Risk Tiers (primary rule — overrides step requirements)
Pick tier by scope + risk, not line count (1 line can be high-risk, 30 files can be trivial). If ambiguous, pick higher tier:
- **Trivial** — wording, formatting, isolated typo/rename with no behavior change: inspect -> change -> verify (`typecheck` or single test). No Architecture/Flow/Constraints/rollback docs.
- **Small** — one component/function, isolated behavior, low-risk dep: Map (1-para flow) + Plan (1-para + rollback file) -> Slice -> Verify.
- **Medium** — multiple modules, DB/API/state-flow changes, new feature: Map + Constrain + Plan + Slice -> Verify + Handover.
- **High-risk** — auth/permissions/payments/secrets/migrations/destructive/security-sensitive/prod infra: full loop below — all docs + Bug.md/Feature.md + rollback commit + diff review.

## Workflow

### 1. Map - load terrain before touching code
Read `Handover.md` first (where we left off). Then load docs per Risk Tier. Location priority: `Handover.md` at repo root → `docs/Handover.md` → `.agent/handover.md` (first found wins; create at root if missing). Same priority for `Architecture.md`/`Flow.md`/`Constraints.md`. If missing and tier requires it, create 1-line stub `TODO: map <module>` and note gap in Handover.
**Criterion:** Required tier docs located or stubbed; current flow path (entry -> modules -> exit) stated in one paragraph.

### 2. Constrain - scope permission
Confirm `Constraints.md` boundaries for this task: forbidden paths, required patterns, dependency rules. If vague, ask one clarifying question and record the answer in Constraints.md before proceeding.
**Criterion:** Allowed vs forbidden behavior written down; task fits inside allowed scope or is re-scoped.

### 3. Plan - ask why before what
Write a short plan before code: approach, tradeoff, why this over alternatives, rollback point (commit/file to restore), files to touch. Log rationale in `Decisions.md` (use `../_shared/decision-template.md`). When approval is required (Medium/High-risk or user asked), stop and ask the user for approval — never treat your own plan as approval. Do not implement until user approves.
**Criterion:** Plan + Decisions.md entry + rollback target exist; for Medium/High-risk, user approval obtained; no code written yet.

### 4. Slice - one change per request
Implement exactly one logical change. Add explicit comments for non-obvious flow (what block does, what calls it, what assumes it). Update `Flow.md` for the touched path only.
**Criterion:** One slice completed and verified; diff is readable without summary; comments explain flow, not restate code. Commit only when repo workflow calls for it (stable slice / coherent rollback point) — slice ≠ commit.

### 5. Verify - prove it works
Run the concrete checklist from `Test checklists` (commands + expected outputs). Read every diff line-by-line - summaries can be wrong, diffs cannot. If AI claims success, verify with evidence; if verification fails, diagnose from output, not guess. Use Risk Tier: Trivial = `typecheck` or single test; Medium/High-risk = full checklist + edge cases.
**Criterion:** Risk-appropriate checklist commands executed with pasted evidence; diff reviewed line-by-line; `Bug.md` or `Feature.md` trail updated.

### 6. Hand over - 30 seconds now saves hours later
Update `Handover.md` (done / in-progress / broken / avoid), append Decisions.md why, pin model/version that reasoned, and leave 5-line next-session note. Keep one trace file per bug/feature start-to-finish. Require ownership gate: you must explain the change in your own words before accept.
**Criterion:** Handover.md + Decisions.md + Bug.md/Feature.md reflect current truth; you can explain the change without reading docs; next session can start cold from Handover.md alone.

## Branches
- **Bug:** Start from `Bug.md` with reproduction -> tried -> worked -> didn't -> verified.
- **Feature:** Start from `Feature.md` with scope -> slices -> verification per slice.
- **Resume:** If Handover.md exists, start there; do not re-derive terrain.

## Rules
- One slice per turn. Never batch unrelated changes.
- Respect Risk Tiers: do not require Map+Constrain+Plan for Trivial/Small — follow tier's minimal docs instead. No code before required tier steps are done.
- Reference detailed templates via context pointers below - do not inline full docs in SKILL.md.

## Composition
See `../COMPOSITION.md`. When primary goal is learning, let `learn-with-ai` govern ownership; when extracting knowledge after shipping, hand off to `knowledge-note-mapping`.

## Context Pointers
- Workflow docs and boundaries: `references/docs.md` - definitions for Handover.md, Decisions.md, Flow.md, Architecture.md, Constraints.md, Bug.md/Feature.md, checklists, rollback.
- Handover template: `references/handover-template.md`
- Decision + flow templates: `references/decision-flow-templates.md`

## Guardrails
- Risk Tiers govern docs (see tiers above). Do not create docs to satisfy a checklist.
- If you cannot explain the code in your own words, do not accept it - docs support understanding, do not replace it. See ownership gate in Step 6.
- Stay inside Constraints.md scope; if a constraint would be violated, stop and ask before touching code.
