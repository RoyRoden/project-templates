# Spec-Driven Starter

A lightweight spec layer for VS Code + Claude Code. Copy this into any repo to enforce
a consistent workflow: spec first, plan second, implement third.

Works with any tech stack. The spec layer is plain markdown and JSON Schema.
The CI and scripts use bash (no language runtime required).

## How to adopt in an existing repo

1. Copy `specs/` (including `specs/STATUS.md`), `templates/`, `scripts/`, `BACKLOG.md` and `CLAUDE.md` into the
   target repo.
2. Copy `.github/workflows/spec-check.yml` if the repo uses GitHub Actions.
3. Replace the example files in `specs/` with real specs for your first feature.
4. Commit. Claude Code will now follow the operating rules in `CLAUDE.md`.

## Feature workflow

```
1. specs/product/<feature>.md      Define intent, scope, behavior
2. specs/api/ or specs/schemas/    Update contracts if affected
3. specs/acceptance/<feature>.md   Write observable acceptance criteria
4. templates/implementation-plan   Plan the implementation with Claude
5. templates/task-checklist        Track progress
6. Implement incrementally
7. specs/STATUS.md                 Update Now / Next / Recently decided and the spec's status
```

## Scripts

| Command | What it does |
|---------|-------------|
| `bash scripts/make-spec.sh <name>` | Scaffold product spec + acceptance criteria from templates |
| `bash scripts/check-specs.sh` | Validate required directories exist and JSON schemas are valid JSON |

For JS/TS projects, add these as npm scripts:
```json
"scripts": {
  "make-spec": "bash scripts/make-spec.sh",
  "check-specs": "bash scripts/check-specs.sh"
}
```

## What Claude Code will do

Given `CLAUDE.md` in the repo root, Claude Code will:
- Read `specs/` before starting non-trivial work
- Ask for clarification if the request is ambiguous
- Write or update the relevant spec before writing code
- Pause after spec + plan and wait for your approval
- Never invent fields, endpoints, or event names not present in specs
- Report spec/code conflicts before editing anything

## File map

```
specs/
  product/          Feature intent and behavior ("the why and what")
    _template.md
  api/              HTTP API contracts (OpenAPI)
    _template.yaml
  schemas/          Data shape contracts (JSON Schema)
    _template.schema.json
  acceptance/       Observable acceptance criteria
    _template.md
templates/
  implementation-plan.md
  task-checklist.md
scripts/
  make-spec.sh      Scaffold a new spec
  check-specs.sh    Validate spec structure
.github/workflows/
  spec-check.yml    CI gate
CLAUDE.md           Claude Code operating rules
```

## Suggested first feature

Open `specs/product/example-project-creation.md` as a reference, then run:
```
bash scripts/make-spec.sh <your-first-feature>
```
Fill in intent, scope, and behavior. Then hand it to Claude Code and say:
"Read the spec I just wrote and produce an implementation plan."
