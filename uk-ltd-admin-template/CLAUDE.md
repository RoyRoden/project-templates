# {{COMPANY_NAME}} — Admin & Compliance

Small UK LTD, no employees, under £500 annual income. This repo is where records live and
deadlines get tracked. It does not replace an accountant or the actual government filing —
Claude Code has no login access to Companies House, HMRC, or the IPO, so submission through
those portals is always a manual step.

## Company details
- Company number: {{COMPANY_NUMBER}}
- Incorporation date: {{INCORPORATION_DATE}}
- Registered office: {{REGISTERED_OFFICE}}
- SIC code: {{SIC_CODE}}
- Accounting reference date (year end): {{ACCOUNTING_REFERENCE_DATE}}

## Filing deadlines
- **Annual accounts** (micro-entity, Companies House): due {{ACCOUNTS_DUE}}, made up to {{PERIOD_END}}
- **Confirmation statement**: due {{CONFIRMATION_STATEMENT_DUE}}
- **CT600 (Corporation Tax return, HMRC)**: due 12 months after the accounting period end
- **Corporation Tax payment**: due 9 months + 1 day after the accounting period end, even if the
  amount due is nil

Re-check exact dates on the Companies House public register before filing — deadlines can shift
if the accounting reference date is ever changed.

## Bookkeeping
`records/income-expenses.csv` is the running ledger. Log every transaction as it happens: date,
description, category, amount in, amount out. At year end, ask Claude to total this into draft
micro-entity balance sheet and P&L figures for the accounts filing, and draft CT600 figures from
the same totals.

## Trademarks & patents
`filings/ip-register.md` tracks applications, registration numbers, and renewal dates. Ask Claude
to draft application text or renewal reminders from this file — actual submission is through the
IPO portal.

## Compliance checklist (this accounting period)
- [ ] Ledger up to date
- [ ] Draft micro-entity accounts prepared
- [ ] Accounts filed with Companies House
- [ ] Confirmation statement filed
- [ ] CT600 drafted
- [ ] CT600 filed with HMRC
- [ ] Corporation Tax paid (or nil confirmed)
