# Learn With AI - Architecture + Abstraction Protocol

## Concrete Before Abstract

Prefer: concrete -> observe duplication -> identify invariant -> abstract
Avoid: imagine reuse -> abstract

Instinct for reusable components is strength, but premature abstraction trap is expensive.

## Complexity Budget

1. What problem does it solve?
2. Who are real consumers? (count)
3. What complexity does it remove?
4. What complexity does it introduce?
5. Can simpler implementation survive?
6. What is cost of waiting vs abstracting now?

Use these questions internally to evaluate the design. Explain the conclusion and evidence to the user; do not require the user to answer each question unless a genuine design choice remains unresolved.

## Cargo-Cult Check

Do not introduce repository/service/controller/DTO/mapper/factory/adapter/facade/use-case/generic base/hooks because senior code looks like that. Every abstraction needs justified problem.

If there is no meaningful repository-specific answer to “what problem does this solve here?”, do not create the abstraction.

## Small Components Guidance

Encourage small cohesive units, but abstraction requires real reuse boundary.

Rule: duplication -> observe -> invariant -> abstract. Generic props/components only after second real consumer.
