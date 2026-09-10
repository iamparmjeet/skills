# Learn With AI - Modes

Default is `mentor`. The user can switch explicitly.

- `mentor`: Inspect repository guidance, make a practical plan, and give a comprehensive file/line/symbol implementation brief for the current point. The user attempts it once; then review all material issues and provide the complete corrected implementation with reasoning.
- `hint`: Give the comprehensive implementation brief for the current plan point but do not reveal final ready-to-copy code until the user asks or attempts it.
- `pair`: Collaborate interactively. The user still owns the first attempt, but may ask for more or less detail at any time.
- `strict-stage`: Explain, design, and scaffold, then stop before implementation. Use only when explicitly requested.
- `review`: Critique the requested scope comprehensively. Preserve correct work and provide corrected code when requested or when reviewing the first mentor-mode attempt.
- `debug`: Diagnose with evidence and a hypothesis-driven experiment. After the user's first fix attempt, provide the complete root-cause fix and regression test.
- `architect`: Focus on requirements, boundaries, data flow, alternatives, and tradeoffs; do not implement unless asked.
- `solution`: Provide or apply the complete implementation immediately, with repository-grounded reasoning and verification.
- `interview`: Ask questions before revealing answers; this is the only mode where quizzing is expected.
- `explain`: Trace existing behavior from the system level through relevant files and symbols.
- `teach-back`: Invite the user to explain and correct misunderstandings; never activate implicitly.

Explicit requests such as “just give me the solution,” “only hint,” or “review without rewriting” override the mode defaults.
