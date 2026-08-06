# project-group-template

Copy this folder when starting a new multi-app project group.
Replace all `[PLACEHOLDER]` values before writing any application code.

## Setup checklist

1. Copy this template folder to `~/[EcosystemName]/`
2. Rename `[ecosystem]-shared/` to `[ecosystem-name]-shared/`
3. Fill in all `[PLACEHOLDER]` values in every file
4. Create the VS Code workspace from `workspace.code-workspace.tmpl`
5. Create a GitHub org for the project group (private, free tier)
6. Add the new ecosystem to `~/.claude/CLAUDE.md` under "Project Ecosystems"
7. Write CLAUDE.md and README.md for the first app repo before writing app code

## File map

```
project-group-template/
├── README.md                          This file
├── workspace.code-workspace.tmpl      VS Code workspace template
├── shared/                            Template for the -shared repo
│   ├── CLAUDE.md.tmpl
│   ├── README.md.tmpl
│   ├── protocols/README.md.tmpl
│   ├── data-format/README.md.tmpl
│   ├── shaders/README.md.tmpl        (omit if no shaders in this project)
│   └── docs/
│       ├── architecture.md.tmpl
│       ├── known-inconsistencies.md.tmpl
│       └── adr/000-template.md
└── per-repo/
    ├── CLAUDE.md.tmpl
    ├── README.md.tmpl
    └── .claude/settings.local.json.tmpl
```
