# Decision + Flow Templates

## Decisions.md entry
```
## YYYY-MM-DD - [slice/feature] 
Decision: [what chosen]
Why: [reason, 1-2 lines]
Alternatives: [what else considered + why rejected]
Tradeoff: [what accepted]
Model: [model/version]
```

## Flow.md entry
```
## Flow - [feature/bug name]
Path: entry:[file:fn] -> [file:fn] -> [file:fn] -> exit:[file:fn]
Modified this slice: [segment]
Assumes: [what exists]
Next touch risk: [adjacent module]
```

## Explicit comment pattern
```ts
// Flow: called by X, feeds into Y
// Why: [reason non-obvious logic exists] 
// Assumes: [precondition]
```

## Review habit - read every diff
Before approving, paste diff and confirm line-by-line. Summaries can be wrong; diffs cannot.
