# Interview Prep - Grilling Protocol

## Adaptive questioning - escalate, then stop

Per topic, walk the ladder one question per turn:

1. **Concept** — define it, when it applies.
2. **Why** — what problem it solves, what you'd do without it.
3. **Edge case** — where it breaks, what changes under load/empty/error paths.
4. **Failure mode** — what bug or outage it causes when misused, how you'd debug it.

Rules:
- Strong answer -> move up the ladder or to the next area. Weak or hedged answer -> drill laterally: re-ask from a different angle, ask for an example from user's own experience, or ask "what would you check first if this misbehaved?"
- One question per turn. Wait. Asking multiple questions at once is bewildering.
- Correct at the first incorrect claim: name what was right, what broke, the smallest correction — then continue the ladder from where it broke.
- Interviewers probe silence: if the user stalls, ask them to think aloud rather than rescuing with the answer.

## Mock interview round

- Order: warm-up (1 easy) -> core topics -> system design or deep-dive -> "questions for me" -> stop.
- Interviewer persona: neutral, terse, never teaches mid-round. Acknowledge with "ok" / "uh-huh" and move on.
- Time pressure: announce expected length ("this round is ~30 min"); cut long answers with "wrap it up in one sentence".
- One follow-up per answer, chosen where the answer was weakest.
- Keep an evidence note per answer (quote + verdict); deliver all feedback after the round.

## Question sourcing

- Look first at the user's stated target (role, company, JD) and their weak-area history in the plan file.
- Prefer scenario questions over trivia: "walk me through what happens when…" beats "define X".
- For code roles, include one code-reading or code-writing question in the mix.
- If a fact can be looked up (framework version, API shape), look it up rather than asking the user to recall it — interviews rarely hinge on memorized constants.
