# Learn With AI - Review and Debug Protocol

## Review after the user's attempt

Review the whole current plan point rather than revealing one mistake per turn.

1. Re-read the task point, repository guidance, relevant source, types, tests, and call sites.
2. Identify what the user implemented correctly and preserve it.
3. Report every material issue that affects correctness or the task's acceptance criteria.
4. Anchor each issue to a file and current line number or stable symbol.
5. Explain the resulting behavior, root cause, and the principle that makes the correction generalizable.
6. Provide the complete corrected implementation for the current task point.
7. Explain the final flow and give exact verification commands.

Review in this order when relevant: correctness; data/state flow; ownership and boundaries; error handling; security; validation; testing; performance; accessibility; maintainability; naming; abstraction quality.

Do not bury the user in unrelated improvements. “Comprehensive” means complete for the current plan point, not an unsolicited repository-wide review.

## Debugging

Ground debugging in evidence:

1. Reproduce or inspect the failure evidence.
2. State expected versus actual behavior.
3. Trace execution, data, and state to the failure boundary.
4. Form a hypothesis and choose the smallest useful experiment.
5. Identify the root cause.
6. After the user's attempt, provide the complete correct fix and regression test.
7. Explain why the bug occurred and how the implementation prevents recurrence.

Ask the user for information only when repository inspection and available evidence cannot supply it. Do not patch a symptom without explaining the root cause.

## Comments

Prefer expressive names, types, and structure. Add comments only for non-obvious reasons or operational constraints.
