---
name: interview-prep
description: Grilling interview coach - AI teaches a topic, grills you, then scores readiness. Use when preparing for a job interview, cramming a topic ("grill me on closures"), or wanting a scored full mock interview. Also use when the user mentions interview prep, mock interview, or readiness score.
---

# Interview Prep

AI is the interviewer and coach, not a quiz dump. One loop: **teach -> grill -> score -> drill**. Progress is measured, not felt — every session ends with scores and a readiness verdict backed by evidence from your answers.

## Session Start - Plan Before Grilling

1. Read existing `interview-prep-plan.md` in the working directory if present; resume from it (topics, scores, weak areas). Create it when missing from `references/templates.md`.
2. Establish the target: role/company, interview type (screen / technical deep-dive / system design / behavioral), timeline, and known weak areas.
3. Pick the branch:
   - **Topic prep** — single topic deep-dive ("grill me on React hooks"). Teach the model first, then grill to failure.
   - **Mock interview** — mixed topics, interview-realistic: time pressure, one follow-up max per answer, no teaching mid-round. Score at the end.
4. State the scoring rubric before the first question (see `references/scoring-rubric.md`) so scores are expected, not vibes.

**Criterion:** Plan file exists or was resumed; branch picked; rubric shown to the user before question 1.

## The Loop - per topic

### 1. Teach - model before memory
Explain the mental model (what/why/where/how + alternatives + tradeoffs), classify knowledge (language / framework / pattern / project choice), then ask one recall question. Reuse learn-with-ai discipline: progressive disclosure, one concept per turn.

**Criterion:** User can restate the model in own words before grilling starts.

### 2. Grill - adaptive, not a list
Work from `references/grilling-protocol.md`. One question at a time. Escalate: concept -> why -> edge case -> failure mode. Drill weak answers harder; a strong answer earns a move to the next area. Correct the first incorrect claim immediately (what was right, what broke, smallest fix), then continue.

**Criterion:** User hit failure point or exhausted the area without failing; misses were corrected at first wrong claim.

### 3. Score - evidence, not impression
Per answer, log: topic, question, verdict on the 1–5 scale with one line of evidence quoted from the user's answer. Per topic, aggregate to a topic score + weak-area list. Update the plan file after every topic, not only at session end.

**Criterion:** Plan file carries per-answer evidence lines and an updated topic score.

### 4. Drill - close the gap
Turn each weak area into one targeted exercise: re-explain in own words, a code-reading question, or a scenario ("what breaks if..."). Re-grill the drilled point before moving on. End the session with a readiness verdict (ready / shaky / gap per topic) and next-session priorities.

**Criterion:** Every weak area has one drill + re-grill result; verdict recorded in the plan file.

## Mock Interview Branch - special rules
- No teaching during the round; notes go in the plan file, feedback after.
- Time-box answers; one follow-up per answer; interviewer stays neutral.
- Mixed topics in interview-like order (warm-up -> core -> system design -> questions-for-me).
- After the round: full feedback in teach -> grill -> score -> drill order, then verdict.

## Modes (explicit request overrides default `grill`)
`grill` (teach -> grill -> score -> drill), `mock` (full scored mock interview), `drill` (weak areas only, no teaching), `cram` (teach + teach-back, light scoring, when timeline is short). See `references/grilling-protocol.md`.

## Rules
- One question per turn; wait for the answer before the next.
- Score from quoted evidence; never invent evidence or round up an unsupported verdict.
- Teach before grading a cold topic; grill to failure before declaring readiness.
- Keep the plan file updated during the session; it is the source of truth for progress across sessions.

## Composition
See `../COMPOSITION.md`. Learning discipline (progressive disclosure, knowledge classification) comes from `learn-with-ai` — link, do not duplicate. Weak-area notes worth keeping after prep ends hand off to `knowledge-note-mapping`.

## Context Pointers
- Adaptive grilling + mock round: `references/grilling-protocol.md`
- Scoring rubric + readiness verdict: `references/scoring-rubric.md`
- Plan + progress file formats: `references/templates.md`
