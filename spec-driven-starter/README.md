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

## Prior art

Every rule here is borrowed from somewhere; if one stops paying off, drop it. Sources checked 2026-11-21.

| Rule in this template | Source |
|------|--------|
| Spec → plan → tasks → implement, with a review gate between steps | GitHub Spec Kit (open source, 2025; `/specify`, `/plan`, `/tasks`); AWS Kiro (2025; `requirements.md` / `design.md` / `tasks.md`) |
| Spec-first rather than spec-as-source; keep the workflow light for small changes | Birgitta Böckeler, ["Understanding Spec-Driven-Development: Kiro, spec-kit, and Tessl"](https://martinfowler.com/articles/exploring-gen-ai/sdd-3-tools.html), martinfowler.com, 15 Oct 2025 |
| Written procedures for the agent (`CLAUDE.md`) instead of role names | MetaGPT, Hong et al., ICLR 2024 ([arXiv 2308.00352](https://arxiv.org/abs/2308.00352)): standardised operating procedures |
| Acceptance criteria checked at the end of every task; "Done" only when ticked | MAST, Cemri et al., "Why Do Multi-Agent LLM Systems Fail?", NeurIPS 2025 ([arXiv 2503.13657](https://arxiv.org/abs/2503.13657)): task verification is one of its three failure categories |
| `[auto]` / `[visual]` / `[hands-on]` acceptance tags | Loosely after the Agile Testing Quadrants (Marick; Crispin & Gregory, *Agile Testing*, 2009); the three tags are this template's own |
| Decisions recorded in the spec, `Recently decided` only points to them | Architecture Decision Records, Michael Nygard, ["Documenting Architecture Decisions"](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions), 2011 |
| WIP limit in `STATUS.md` | Kanban (David J. Anderson, *Kanban*, 2010) |
| `Next` in `STATUS.md`; `BACKLOG.md` in priority order | GTD "next action" (David Allen, *Getting Things Done*, 2001) |
| "Done when" on backlog items | Scrum's Definition of Done |
| Update `STATUS.md` before ending a session | This template's own: the repo, not the chat, carries context between sessions and machines |

How widely it's used: Spec Kit is one of GitHub's most-starred AI tooling repos; Thoughtworks' Technology Radar has
spec-driven development at *Assess* (Nov 2025) and Spec Kit at *Assess* (Vol. 34, Apr 2026). Academic work is new
and still small: e.g. Piskala, "Spec-Driven Development: From Code to Contract" ([arXiv 2602.00180](https://arxiv.org/abs/2602.00180), Jan 2026),
and Agarwal, Singhal, Macvean, Vasilescu & Breaux, "Spec-Driven Development as Prescribed and as Practiced"
([arXiv 2608.25202](https://arxiv.org/abs/2608.25202), Aug 2026), which finds teams use it selectively, mostly for
new features, trading higher planning and review cost for more dependable agent behaviour.
