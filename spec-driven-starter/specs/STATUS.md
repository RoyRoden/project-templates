# Spec status

The one place to see where the project stands. Update it whenever you finish a feature (status line, plan
ticked, acceptance ticked), add or close an open item, or end a session in which something was decided.
Details live in each spec; this file only points to them.

**Updated**: YYYY-MM-DD
**WIP limit**: 3 specs "in user test" at a time. At the limit, test what's built before building more.

## Now

What is being worked on, in one or two lines.

## Next

The next step, concrete enough to start a session with.

## Recently decided

Dated one-liners, newest first. A decision that changes a spec goes **in that spec** (Open questions, Behavior,
Scope); the line here only points to it. Lines here are for what has no spec to live in: direction, tooling,
approach, priorities. Drop lines older than about a month.

- YYYY-MM-DD: Decided … (see `product/<feature>.md` / `docs/adr/NNN-….md`)

## How to read it

| Status | Meaning |
|--------|---------|
| Draft | Written, not yet agreed. |
| In progress | Agreed and being built, or built and in user test. |
| Done | Built and confirmed hands-on. Its acceptance items are ticked; anything not exercised is left unticked with a note. |
| Retrofit | Built before its spec existed; not verified item by item. Gets a full spec when it's next changed. |
| Deprecated | Removed; its acceptance items are marked `[n/a]`. |

An unticked acceptance item means **open**.

## Specs

| Spec | Status | Plan | Acceptance |
|------|--------|------|------------|
| [feature](product/feature.md) (one-line description) | **Draft** | [plan](plans/feature.md) | [open](acceptance/feature.md) |

## Open items

### Awaiting a decision
- **Item** (spec, section).

### Agreed for later
- Item.
