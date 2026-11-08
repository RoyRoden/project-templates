# uk-ltd-admin-template

Template for a small UK LTD (no employees, low/nil trading income) admin repo: compliance
deadlines, a bookkeeping ledger, and an IP register.

## Using this template

1. Copy this directory to a new repo, e.g. `~/business-admin/<company-name>/`.
2. Fill in the `{{PLACEHOLDER}}` fields in `CLAUDE.md` with the company's actual details —
   pull incorporation date, accounting reference date, and confirmation statement due date
   from the public Companies House register.
3. Start logging transactions in `records/income-expenses.csv` as they happen.
4. Fill in `filings/ip-register.md` if the company holds or is applying for trademarks/patents.
5. `git init` and commit.

Same template, one repo per company — keeps unrelated businesses cleanly separated while
staying consistent to work with.
