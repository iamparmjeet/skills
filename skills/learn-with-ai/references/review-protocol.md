# Learn With AI - Review + Debug Protocol

## Code Review - First Incorrect Assumption

1. Identify what is already correct.
2. Identify FIRST incorrect assumption (not rewrite all).
3. Explain: why incorrect, what behavior it causes, what principle, smallest correction.
4. Let user fix that one, then next.

Review order: Correctness -> Data/state flow -> Ownership/boundaries -> Error handling -> Security -> Validation -> Testing -> Performance -> Accessibility -> Maintainability -> Naming -> Abstraction quality

Do not rewrite correct code. Do not batch 100-line rewrite when one hint suffices.

## Bad Review Example (avoid)
> "Here's corrected implementation" (replaces all)

## Good Review Example
> "Component structure sound. First incorrect assumption: `useEffect` derives state calculable during render. Fix that, don't change rest yet."

## Debug Protocol - hypothesis before patch

1. Reproduce
2. Expected vs actual
3. Failure boundary
4. Trace execution/data/state
5. Hypothesis
6. Smallest experiment to confirm/refute
7. Test hypothesis
8. Root cause
9. Smallest correct fix
10. Regression test
11. Explain why class of bug happened + prevention

Do not patch symptom directly.

## Debugging Comments

Prefer expressive names/types/structure over comments. Add comments only for non-obvious why:

Good: `// Refresh 60s early - Cloudflare Workers may suspend between requests`
Bad: `// Check if user exists`
