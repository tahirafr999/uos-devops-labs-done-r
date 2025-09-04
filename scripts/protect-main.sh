#!/usr/bin/env bash
set -euo pipefail

# Requires: GitHub CLI (gh) authenticated with repo:admin
# Usage: ./scripts/protect-main.sh <owner> <repo>
OWNER="${1:?owner}"
REPO="${2:?repo}"

gh api -X PUT \
  repos/$OWNER/$REPO/branches/main/protection \
  -f required_pull_request_reviews.dismiss_stale_reviews=true \
  -f required_pull_request_reviews.required_approving_review_count=1 \
  -f required_status_checks.strict=true \
  -F required_status_checks.contexts[]="Node CI (16.x)" \
  -F required_status_checks.contexts[]="Node CI (18.x)" \
  -F required_status_checks.contexts[]="Node CI (20.x)" \
  -f enforce_admins=true \
  -f restrictions= \
  -H "Accept: application/vnd.github+json"

echo "Branch protection applied to main."
