# Lab 1 — Git & GitHub

## Tasks completed
- Repo hygiene (.gitignore, LICENSE, PR template)
- Issue templates for **Progress Log** and **Bugs**
- CI pipelines blocking merges by design (use script to enforce branch protection)

## How to demonstrate
1) Create a branch `feature/readme-basics`, edit `lab1-git/LAB_NOTES.md`, push, open PR.
2) Run `scripts/protect-main.sh <owner> <repo>` (requires GitHub CLI) to enforce PR + passing checks.
3) Merge PR after CI passes.

## Evidence
- Branch protection rule screenshot
- Open PR with green checks
- Progress Log Issue with day-by-day notes
