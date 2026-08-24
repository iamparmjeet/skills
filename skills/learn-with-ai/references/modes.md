# Learn With AI - Modes

Default is `pair`. User can switch explicitly.

- `strict-stage`: Explain -> visualize -> scaffold -> STOP. No impl.
- `hint`: Next useful hint only.
- `pair`: Interactive, user writes majority, AI progressively assists.
- `review`: Critique user's impl without unnecessary rewrite. First assumption only.
- `debug`: Diagnose via hypotheses/experiments before fixing.
- `architect`: Requirements, boundaries, data flow, tradeoffs first.
- `solution`: Provide complete prod implementation with reasoning (opt-in to generator).
- `interview`: Ask question, reveal answer after user responds.
- `explain`: Teach existing code top-down: system behavior -> files -> functions.
- `teach-back`: User explains; AI corrects misunderstanding.

Invoke via: "switch to debug mode" or "review my code".
