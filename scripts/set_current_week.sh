#!/usr/bin/env bash
set -euo pipefail
# Usage: bash scripts/set_current_week.sh <WEEK_NUMBER>
# Optional: SITE_URL env var (default: https://steven-ryan.github.io/ap-csp_25-26)

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <week-number>"
  exit 1
fi

week="$1"
if ! [[ "$week" =~ ^[0-9]+$ ]] || (( week < 1 || week > 32 )); then
  echo "Error: week must be 1..32"
  exit 1
fi

SCRIPT_DIR="$(cd -- "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
SCHEDULE="$ROOT/docs/schedule.md"

[[ -f "$SCHEDULE" ]] || { echo "Not found: $SCHEDULE"; exit 1; }

SITE_URL="${SITE_URL:-https://steven-ryan.github.io/ap-csp_25-26}"
plan_url="$SITE_URL/weeks/week-$week/this-week.html"
quiz_url="$SITE_URL/weeks/week-$week/quiz.html"

newline="👉 Current week: Week ${week} — Plan: [Week ${week} plan](${plan_url}) — Quiz: [Week ${week} quiz](${quiz_url})"

tmp="$(mktemp)"; trap 'rm -f "$tmp"' EXIT
awk -v repl="$newline" '
  BEGIN{done=0}
  {
    if (!done && $0 ~ /^👉 Current week:/) { print repl; done=1 }
    else { print }
  }
' "$SCHEDULE" > "$tmp"
mv "$tmp" "$SCHEDULE"
echo "Updated current week to Week ${week}"
