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

## Reference note (optional)
Use when evidence/definitions are too large for an atomic note. Link atomic → reference → source.
