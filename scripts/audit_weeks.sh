#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd -- "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BASE="$ROOT/docs/weeks"

fail=0

check_file() {
  local f="$1"; shift
  local desc="$1"; shift
  if [[ ! -f "$f" ]]; then
    echo "ERROR: missing $desc: $f"
    fail=1
    return
  fi
  for pat in "$@"; do
    if ! grep -qiE "$pat" "$f"; then
      echo "ERROR: $desc missing pattern: $pat ($f)"
      fail=1
    fi
  done
}

find "$BASE" -maxdepth 1 -type d -name 'week-*' | sort -V | while read -r dir; do
  week="$(basename "$dir" | sed -E 's/^week-([0-9]+)$/\1/')"
  echo "Auditing week $week ..."
  this="$dir/this-week.md"
  quiz="$dir/quiz.md"
  plan="$dir/lesson-plan.md"

  # Student-facing weekly plan
  check_file "$this" "this-week.md" \
    '^# +Week' \
    'Before class' \
    'In class' \
    'After class' \
    'Deliverables'

  # Quiz clarity and inline answers
  check_file "$quiz" "quiz.md" \
    '^title:\s*Week[[:space:]]+' \
    '^# +Mini-Quiz' \
    '^Instructions' \
    '<details[[:space:]]+markdown="1".*<summary>Answer</summary>'

  # Teacher plan
  check_file "$plan" "lesson-plan.md" \
    'Teacher Lesson Plan' \
    'Quick checks' \
    '^Assess' \
    '^## Teacher prep \(before class\)' \
    '^## How to use this week'


done

if (( fail != 0 )); then
  echo "Week audit failed."
  exit 1
fi
echo "All weeks pass audit."