# Acceptance Criteria: Project Creation

**Spec**: `specs/product/example-project-creation.md`

## Happy path

- [ ] Given a valid name, when POST /projects is called, then a 201 response is returned with id, name, description, and createdAt fields.
- [ ] Given a valid name with no description, when POST /projects is called, then description is absent or null in the response.
- [ ] The returned id is a valid UUID.
- [ ] The returned createdAt is a valid ISO 8601 timestamp.

## Edge cases

- [ ] A name of exactly 1 character is accepted.
- [ ] A name of exactly 100 characters is accepted.
- [ ] A description of exactly 500 characters is accepted.

## Error cases

- [ ] Given an empty name, then 400 is returned with a non-empty error string.
- [ ] Given a name of 101 characters, then 400 is returned.
- [ ] Given a description of 501 characters, then 400 is returned.
- [ ] Given a missing name field, then 400 is returned.

## Non-functional

- [ ] The endpoint responds within 500ms under normal load.
