# Spec-Driven Starter — Claude Code Operating Rules

## Core rule

For any non-trivial work in this repo, read the relevant spec in `specs/` before writing code.
"Non-trivial" means: new features, API or schema changes, anything touching shared contracts,
and any change whose intent is not obvious from the task description alone.

## Workflow

1. Read `specs/product/<feature>.md` to understand intent and scope.
2. Read `specs/api/` and `specs/schemas/` if the change touches contracts.
3. If the request is ambiguous, ask one clarifying question before proceeding.
4. For new features, create or update:
   - `specs/product/<feature>.md`
   - `specs/api/` or `specs/schemas/` if a contract is affected
   - `specs/acceptance/<feature>.md`
5. Present the spec and implementation plan. **Pause and wait for approval.**
6. Only implement after approval.
7. Keep tests aligned with acceptance criteria as implementation proceeds.

## Status and end of session

- `specs/STATUS.md` is where the project stands: **Now**, **Next**, **Recently decided**, the spec table and
  open items. Read it at the start of a session.
- Before ending a session in which something was built, decided, or changed direction, update `STATUS.md`
  (Now / Next / Recently decided, the spec's status line) and commit. Propose the update; the user confirms.
- A decision that changes a spec goes in that spec; `Recently decided` only points to it.
- Respect the WIP limit in `STATUS.md`: at the limit, test what's built before building more.
- Unspecced ideas and one-session tasks go in `BACKLOG.md`, in priority order, each with a "done when".

## Hard constraints

- Never invent field names, endpoint paths, event names, or response shapes not present in specs.
- If code and spec conflict, report the conflict before touching any file.
- Do not expand scope beyond what the spec defines. Note anything out of scope explicitly.
- Prefer updating contracts and tests before writing implementation code.

## Adding a spec

Copy the relevant template:

| Need | Template |
|------|----------|
| Feature intent | `specs/product/_template.md` |
| HTTP API contract | `specs/api/_template.yaml` |
| Data schema | `specs/schemas/_template.schema.json` |
| Acceptance criteria | `specs/acceptance/_template.md` |
| Implementation plan | `templates/implementation-plan.md` |
| Task checklist | `templates/task-checklist.md` |
| Project status | `specs/STATUS.md` (one per project, kept up to date) |
| Backlog | `BACKLOG.md` (one per project) |

## What lives where

```
specs/product/      Feature intent, scope, behavior — the "why" and "what"
specs/api/          HTTP API contracts (OpenAPI)
specs/schemas/      Data shape contracts (JSON Schema)
specs/acceptance/   Observable acceptance criteria, tagged [auto] / [visual] / [hands-on]
specs/STATUS.md     Now / Next / Recently decided, spec table, open items
BACKLOG.md          Unspecced ideas and one-session tasks, in priority order
templates/          Reusable document templates
scripts/            Local spec tooling
```
