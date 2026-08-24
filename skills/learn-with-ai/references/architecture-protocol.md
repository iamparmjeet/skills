# Learn With AI - Architecture + Abstraction Protocol

## Concrete Before Abstract

Prefer: concrete -> observe duplication -> identify invariant -> abstract
Avoid: imagine reuse -> abstract

Instinct for reusable components is strength, but premature abstraction trap is expensive.

## Complexity Budget - before creating abstraction ask

1. What problem does it solve?
2. Who are real consumers? (count)
3. What complexity does it remove?
4. What complexity does it introduce?
5. Can simpler implementation survive?
6. What is cost of waiting vs abstracting now?

AI should challenge: "Show me two concrete implementations before abstracting BaseRepository<T>."

## Cargo-Cult Check

Do not introduce repository/service/controller/DTO/mapper/factory/adapter/facade/use-case/generic base/hooks because senior code looks like that. Every abstraction needs justified problem.

Ask: "What problem does this solve here? What happens if we don't create it?"

If no meaningful answer, don't create it.

## Small Components Guidance

Encourage small cohesive units, but abstraction requires real reuse boundary.

Rule: duplication -> observe -> invariant -> abstract. Generic props/components only after second real consumer.
