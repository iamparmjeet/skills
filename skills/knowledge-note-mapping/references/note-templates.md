# Note Templates

## Source note
```md
---
type: source
source: ""
author: ""
published: ""
captured: "YYYY-MM-DD"
url: ""
status: inbox | processed
---

# Source Title

## Summary
One paragraph — what this source argues.

## Key Claims
- [[Claim-shaped atomic note title]]
- [[Claim-shaped atomic note title]]

## Source
Author, URL, timestamp/section refs for audio/video.

## Processing
- Extracted: [[...]]
- MOC updates: [[...]]
- Evidence limits: ...
```

## Atomic note
```md
---
type: atomic
status: not yet verified | supported | partly supported | unsupported | contested
---

# Claim-shaped title (one reusable idea)

## Claim
One qualified proposition.

## Explanation
Why it matters + qualifications that prevent misuse.

## Evidence
- Source claim: …
- Independent verification: … (link to authority: systematic review, guideline, RFC, official docs, primary research)
- Assessment: supported | partly supported | unsupported | contested | not yet verified
- Limits: population/dose/timeframe/quality/uncertainty

## Related
- Up: [[Title/MOC]]
- Side: [[contrasts with / governed by / depends on]]
- Back: [[Source note]]
```

## Title / MOC note
```md
---
type: moc
---

# Subject (noun)

## Boundary
What this subject includes and excludes.

## Branches
- [[Concept A]] — is a type of / governed by
- [[Concept B]] — contrasts with
- [[Concept C]] — depends on

## Related MOCs
- Broader: [[Broader MOC]]
```

## Reference note — identity / balanced (optional)
Use when definitions or a points-vs-counterpoints comparison are too large for an atomic note.
```md
---
type: reference
aliases: [Alternate name, Acronym]
---

# Subject (noun — element, compound, standard)

One-paragraph definition.

## Identity
What it is; the stable, factual layer (chemistry, physics, specification).

## Points
- The case for concern, with evidence.

## Counterpoints
- The case against, with evidence.

## Linked notes
- [[Effect/application note]] — is an application of / is governed by this
- [[Source note]] — originally surfaced by

## Evidence limits
Population/dose/timeframe/quality/uncertainty.
```

## Micro note
One subject, short. Split a blurred combined note into these; keep the combined note as an overview that links them.
```md
---
type: atomic
aliases: [Alternate name, Acronym]
---

# Subject (one compound/element/form)

One-paragraph definition. Nouns for identity subjects; claim-shaped only for effects.

## Points
- …

## Counterpoints
- …

## Connections
- Up: [[Overview or MOC]]
- Side: [[contrasts with / paired with]]
- Effect: [[is a form whose effect is]]
```

## Overview note (kept after splitting)
```md
# Pair / Group (noun)

Short framing of the group and why the members are distinguished.

- [[Micro note A]]
- [[Micro note B]]

## Shared general knowledge
…

## Linked notes
- [[Effect note]], [[MOC]]

## Source
Originally surfaced by [[Source note]]; this note generalizes beyond it.
```

## Registry / index MOC
```md
# Subject Registry (noun)

## Naming convention
- Title by name; identifiers (number, code, symbol) live in frontmatter; order the table by the identifier.

## Registry
| ID | Symbol | Name | Category | Note |
| --- | --- | --- | --- | --- |
| 1 | H | Hydrogen | nonmetal | — |
| 26 | Fe | Iron | transition metal | [[Iron]] |

## Existing entity notes
```dataview
TABLE identifier, category
FROM "path/to/entities"
WHERE identifier
SORT identifier ASC
```
```

## Hub / item map (list-heavy source)
```md
---
type: reference
---

# Source Title — Items and Evidence Map

Indexes every item the source names. Keep creator's claim, actual mechanism/compound, and verdict separate.

| Item | Claimed benefit | Active compound / mechanism | Verdict | Note |
| --- | --- | --- | --- | --- |
| … | … | … | supported / partly / unsupported | [[Atomic note]] |

## Chemistry linkages
…

## Evidence limits
…
```
