---
name: knowledge-note-mapping
description: Process source or Inbox notes into an evidence-aware, interconnected knowledge system. Use when processing a clipping, video, article, book note, or research note; preserving a creator's claims alongside independent verification; extracting reusable atomic notes; creating or refining title/MOC notes; designing cross-links between concepts; or separating facts, interpretations, sources, and uncertain claims in an Obsidian or LifeOS-style vault.
---

# Knowledge Note Mapping

Turn source material into durable knowledge without copying its whole argument into every note. Build the smallest useful graph: a source preserves provenance, atomic notes preserve reusable claims, and title/MOC notes provide navigation and boundaries.

## Inspect Before Editing

1. Read the closest `AGENTS.md`, vault conventions, templates, and current target note.
2. Inspect current Git status when available; preserve unrelated changes.
3. Search for existing notes before creating one. Reuse or improve an established concept rather than duplicating it.
4. Identify the source type, its provenance, the creator's relevant credentials, and whether its claims need independent verification. Credentials guide scrutiny; they do not establish a claim as fact.

## Map the Material

Classify each useful item before creating it:

- **Source note:** preserves original material, author, URL, and provenance.
- **Atomic note:** makes one reusable, bounded claim or definition that can stand outside this source.
- **Title/MOC note:** organizes a subject that has several concepts, subtopics, or institutions.
- **Reference note:** records evidence, definitions, or comparison details too large for an atomic note.

Create an atomic note only when the concept will be useful outside the current source. Keep one-off context in the current note.

When several reusable notes belong to a larger subject, create a title/MOC note. Keep its role navigational: state the boundary, list its branches, and link each branch through a meaningful relationship.

## Write and Link

1. Give notes descriptive, claim-shaped titles; use a noun title only for a title/MOC note, person, organization, or primary subject.
2. Put one core idea in each atomic note. Include qualifications that prevent it from becoming misleading.
3. Link upward to the title/MOC note, sideways to concepts it clarifies or contrasts with, and backward to the source or reference evidence.
4. Do not link merely because terms are similar. Each link should express a relationship such as *is a type of*, *is governed by*, *contrasts with*, *depends on*, or *is an application of*.
5. Update the source with the processing result, extracted-note links, and its appropriate processed status/location.

Use this hierarchy when it fits the material:

```text
Source → atomic claim → title/MOC → broader title/MOC
```

Example: a source mentioning the UN, WTO, and IMF can produce atomic notes for their distinct roles, title notes for `United Nations`, `International Trade Governance`, and `International Financial Institutions`, then link them under `International Institutions` and `World Order`.

Templates: `references/note-templates.md`. Completion checklist: `references/completion-checklist.md`.

## Evidence Discipline

For substantive or high-stakes claims, preserve the source's position and assess it in parallel. Do not silently replace the creator's claim with an unsupported summary.

1. Record the claim faithfully and specifically, with a timestamp or section reference for audio/video when practical.
2. State the independent verification beside it: supported, partly supported, unsupported, contested, or not yet verified.
3. Link the verification to the strongest suitable authority: systematic reviews, clinical guidelines, primary research, official data, standards, RFCs, or official technical documentation as appropriate.
4. State the reason for any disagreement, including population, dose, timeframe, outcome, study quality, or uncertainty.
5. Promote only the qualified, independently supported conclusion into a reusable atomic note. Keep the creator's original framing and unresolved questions in the source note or a reference note.

Use a compact comparison when it improves clarity:

```text
Source claim: …
Independent verification: …
Assessment: supported | partly supported | unsupported | contested | not yet verified
Limits: …
```

- Treat a source's interpretation as an interpretation unless independently verified.
- For political, historical, legal, medical, financial, or current claims, research authoritative sources before presenting a reusable claim as fact. For medical content, prefer systematic reviews and clinical guidelines; do not treat an MD or other credential as a substitute for the underlying evidence.
- For technical claims, prefer the governing standard or specification (for example, an RFC), then official implementation documentation and reproducible tests where behavior is implementation-specific.
- Keep background/orientation sources distinct from evidence used for substantive claims.
- Separate domestic causes, foreign involvement, and foreign orchestration. A relationship, influence, or institutional membership is not proof of control.
- Replace vague labels with testable propositions: identify the actor, action, channel, time, and evidenced outcome.
- Preserve uncertainty explicitly; do not turn a broad phrase, conspiracy claim, or rhetorical slogan into a conclusion without evidence.

## Validate and Hand Off

1. Check YAML/frontmatter, links, filenames, and source status/movement.
2. Confirm every newly created atomic note is independently useful and each title/MOC note has a real scope.
3. Inspect the final diff and distinguish structural validation from factual or semantic review.
4. Report the created map, the sources used, and any evidence limits.

## Composition
See `../COMPOSITION.md`. This skill owns notes/provenance/evidence; do not duplicate Decisions.md/handover owned by `ship-loop`/`learn-with-ai` — link instead.

## Guardrails

- Do not duplicate task lists, review schedules, or source contents across systems.
- Do not mass-move, mass-rename, delete, change privacy, alter a system boundary, or modify protected material without explicit approval.
- Follow the target vault's naming, metadata, and ownership conventions over this generic skill.
