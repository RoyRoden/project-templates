# Feature: Project Creation

**Status**: Example
**Date**: 2026-06-02

## Intent

A user can create a new project by providing a name and optional description.
The project is persisted and immediately accessible. This is the entry point
for all project-scoped work in the application.

## Scope

**In scope:**
- Create a project with a name (required) and description (optional)
- Return the created project with a generated ID and creation timestamp
- Validate name length and reject empty names

**Out of scope:**
- Project templates or cloning
- Duplicate name detection
- Multi-user ownership or permissions

## Behavior

- A POST to `/projects` with `{ name, description? }` creates a project.
- `name` is required; 1–100 characters.
- `description` is optional; max 500 characters.
- On success: returns `201` with `{ id, name, description, createdAt }`.
- On invalid input: returns `400` with `{ error: string }` describing the problem.
- `id` is a UUID generated server-side; `createdAt` is an ISO 8601 timestamp.

## Acceptance criteria

See `specs/acceptance/example-project-creation.md`.

## Open questions

- None (example feature).

## Dependencies

- None.
