---
name: knowledge-note-mapping
description: Turn sources into durable linked knowledge. Use when processing clippings, articles, or notes into atomic claims with provenance and verification for an Obsidian vault.
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

1. Give notes descriptive, claim-shaped titles; vault naming/metadata conventions override generic naming when they conflict (see Guardrails). Use noun title only for title/MOC, person, organization, or primary subject.
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

For substantive or high-stakes claims, preserve the source's position and assess it in parallel — see `references/evidence.md` for full discipline (supported/partly/unsupported/contested/not-yet-verified, authority hierarchy, limits). Keep one compact comparison per claim:

```text
Source claim: … | Independent verification: … | Assessment: supported | partly | unsupported | contested | not yet verified | Limits: …
```

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
