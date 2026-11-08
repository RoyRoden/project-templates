# project-templates

Reusable starting points for new project groups. Each template defines the
standard structure, documentation conventions, and Claude Code context used
across all Roy Rodenhauser project ecosystems.

## Available templates

| Template | Use for |
|----------|---------|
| [`project-group-template/`](project-group-template/) | Any new multi-app project group |
| [`spec-driven-starter/`](spec-driven-starter/) | Adding a spec-first workflow to a new or existing repo |
| [`uk-ltd-admin-template/`](uk-ltd-admin-template/) | A small UK LTD's admin repo: deadlines, ledger, IP register (the company repos made from it stay off GitHub) |
| [`workshop-lecture-template/`](workshop-lecture-template/) | A one-off workshop, lecture or teaching session |

## Convention

Both active ecosystems (Canvastique3D and Slice-AR) follow the same pattern:

```
~/[EcosystemName]/
├── [ecosystem].code-workspace    VS Code workspace grouping all repos
├── [ecosystem]-shared/           Shared specs, schemas, docs (no runnable code)
├── [repo-1]/                     App repo (own git, own CLAUDE.md + README.md)
├── [repo-2]/
└── ...
```

Repos that live outside the ecosystem folder are referenced by absolute path
in the workspace file.

## GitHub organisation

Each project group gets its own private GitHub organisation:
- `canvastique3d` — Canvastique3D ecosystem
- `slice-ar` — Slice-AR ecosystem

New project groups follow the same pattern. Personal repos (legacy or hardware)
stay under `RoyRoden`.
