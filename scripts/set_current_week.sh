#!/usr/bin/env bash
set -euo pipefail

# Usage: bash scripts/set_current_week.sh <WEEK_NUMBER>
# Optional: BASE_URL env var to override the repo base (default below)
#   BASE_URL="https://github.com/<owner>/<repo>/blob/main"
#
# Example:
#   bash scripts/set_current_week.sh 2
#   BASE_URL="https://github.com/steven-ryan/ap-csp_25-26/blob/main" bash scripts/set_current_week.sh 6

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <week-number>"
  exit 1
fi

week="$1"
if ! [[ "$week" =~ ^[0-9]+$ ]] || (( week < 1 || week > 32 )); then
  echo "Error: week must be an integer between 1 and 32"
  exit 1
fi

# Resolve paths
SCRIPT_DIR="$(cd -- "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
SCHEDULE="$ROOT/docs/schedule.md"

if [[ ! -f "$SCHEDULE" ]]; then
  echo "Error: not found: $SCHEDULE"
  exit 1
fi

# Repo base for links (override via BASE_URL env var if needed)
BASE_URL_DEFAULT="https://github.com/steven-ryan/ap-csp_25-26/blob/main"
BASE_URL="${BASE_URL:-$BASE_URL_DEFAULT}"

# Build URLs (space in folder name is URL-encoded)
enc_path="week%20${week}"
plan_url="${BASE_URL}/${enc_path}/this-week.md"
quiz_url="${BASE_URL}/${enc_path}/quiz.md"

newline="👉 Current week: Week ${week} — Plan: [Week ${week} plan](${plan_url}) — Quiz: [Week ${week} quiz](${quiz_url})"

tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT

awk -v repl="$newline" '
  BEGIN{done=0}
  {
    if (!done && $0 ~ /^👉 Current week:/) { print repl; done=1 }
    else { print }
  }
' "$SCHEDULE" > "$tmp"

mv "$tmp" "$SCHEDULE"
echo "Updated current week to Week ${week} in docs/schedule.md"