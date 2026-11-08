# workshop-lecture-template

Template for a one-off workshop, lecture, or teaching session: agenda, a CLAUDE.md
capturing the audience/format so future prep stays consistent, and a `deck/` folder
for the slide artifact's source HTML.

## Using this template

1. Copy this directory to `~/workshops-lectures/<venue>-<year>-<topic>/`.
2. Fill in the `{{PLACEHOLDER}}` fields in `CLAUDE.md` — audience, venue, date, duration,
   format (talk / hands-on / mixed).
3. Fill in `agenda.md` with the actual running order. Keep the segment-type convention
   (Concept / Live-build / Exercise / Break) — it's what makes the agenda skimmable
   during prep and while teaching.
4. Build the slide deck as an HTML artifact, then save its source into `deck/`.
5. `git init` and commit if the material is worth versioning across iterations
   (recurring course, revised each year); skip git for genuinely one-off sessions.

Same template, one folder per session — keeps unrelated teaching engagements cleanly
separated while staying consistent to prep.
