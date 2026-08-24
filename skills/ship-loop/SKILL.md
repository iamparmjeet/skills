---
name: ship-loop
description: Use when shipping AI-assisted code - building a feature, fixing a bug, continuing from a handover, or governing an AI session with traceable workflow. Triggers on ship, handover, Decisions.md, Flow.md, Architecture.md, Constraints.md, or needing governed execution with rollback and verification.
---

# Ship Loop

Govern AI-assisted execution so every change is scoped, traceable, and reversible. AI never writes blind.

## Workflow

### 1. Map - load terrain before touching code
Read in order: `Handover.md` (where we left off), `Architecture.md` (system map), `Flow.md` (execution trace), `Constraints.md` (boundaries). If any missing, create a 5-line stub and note the gap in Handover.
**Criterion:** All four files located or stubbed; current flow path (entry -> modules -> exit) stated in one paragraph.

### 2. Constrain - scope permission
Confirm `Constraints.md` boundaries for this task: forbidden paths, required patterns, dependency rules. If vague, ask one clarifying question and record the answer in Constraints.md before proceeding.
**Criterion:** Allowed vs forbidden behavior written down; task fits inside allowed scope or is re-scoped.

### 3. Plan - ask why before what
Write a short plan before code: approach, tradeoff, why this over alternatives, rollback point (commit/file to restore), files to touch. Log rationale in `Decisions.md`. Do not implement until plan is approved.
**Criterion:** Plan + Decisions.md entry + rollback target exist and are approved; no code written yet.

### 4. Slice - one change per request
Implement exactly one logical change. Add explicit comments for non-obvious flow (what block does, what calls it, what assumes it). Update `Flow.md` for the touched path only.
**Criterion:** One slice committed; diff is readable without summary; comments explain flow, not restate code.

### 5. Verify - prove it works
Run the concrete checklist from `Test checklists` (commands + expected outputs). Read every diff line-by-line. If AI claims success, verify with evidence; if verification fails, diagnose from output, not guess.
**Criterion:** Checklist commands executed with pasted evidence; diff reviewed line-by-line; `Bug.md` or `Feature.md` trail updated.

### 6. Hand over - 30 seconds now saves hours later
Update `Handover.md` (done / in-progress / broken / avoid), append Decisions.md why, pin model/version that reasoned, and leave 5-line next-session note. Keep one trace file per bug/feature start-to-finish.
**Criterion:** Handover.md + Decisions.md + Bug.md/Feature.md reflect current truth; next session can start cold from Handover.md alone.

## Branches
- **Bug:** Start from `Bug.md` with reproduction -> tried -> worked -> didn't -> verified.
- **Feature:** Start from `Feature.md` with scope -> slices -> verification per slice.
- **Resume:** If Handover.md exists, start there; do not re-derive terrain.

## Rules
- One slice per turn. Never batch unrelated changes.
- No code before Map + Constrain + Plan are done.
- Reference detailed templates via context pointers below - do not inline full docs in SKILL.md.

## Context Pointers
- Workflow docs and boundaries: `references/docs.md` - definitions for Handover.md, Decisions.md, Flow.md, Architecture.md, Constraints.md, Bug.md/Feature.md, checklists, rollback.
- Handover template: `references/handover-template.md`
- Decision + flow templates: `references/decision-flow-templates.md`

## Guardrails
- If you cannot explain the code in your own words, do not accept it - docs support understanding, do not replace it.
- If a constraint would be violated, stop and ask before touching code.
