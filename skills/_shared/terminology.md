# Shared Terminology

One definition, referenced by all skills. If a skill uses a term differently, it must scope it explicitly.

- **Decision** — why a choice was made vs alternatives/tradeoffs. Lives in `Decisions.md` per `_shared/decision-template.md`.
- **Handover** — current truth for next session (Done / In-progress / Broken / Avoid / Next) + model/version. Lives in `Handover.md`.
- **Verification** — scoped by skill:
  - `learn-with-ai`: learner can teach back flow/ownership/tradeoffs; typecheck/tests pass
  - `ship-loop`: checklist commands + diff reviewed line-by-line + Bug.md/Feature.md updated
  - `knowledge-note-mapping`: claims have evidence status + authority link + limits preserved
- **Evidence** — for knowledge: independent verification beside source claim (supported/partly/unsupported/contested/not yet verified).
- **Risk / Scope** — scope = blast radius (files/modules/users); risk = consequence (auth/payments/secrets/migrations/destructive/security). Tier decides required docs.
- **Ownership** — who/what is responsible for understanding or artifact. Gates check you can explain without docs.
- **Slice** — one logical change. Verifiable alone; commit is separate (only when workflow needs a rollback point).
