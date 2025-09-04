# Lab 2 — CI with GitHub Actions (Node.js)

This lab provides a **matrix CI** across Node 16/18/20 with cache enabled.

## Local run
```bash
cd lab2-actions
npm ci
npm test
npm run build
```

## CI
See `.github/workflows/ci.yml` at repo root. It:
- triggers on PR/push to `main`
- runs matrix: 16.x, 18.x, 20.x
- installs + builds + tests

## Evidence to capture
1. Workflow YAML open (trigger + matrix visible)
2. Checks tab: all jobs green
3. (Optional) break a test, show red, then fix

## Notes
- No external deps; uses Node's built-in test runner for reliability.
