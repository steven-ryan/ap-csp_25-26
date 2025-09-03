#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd -- "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DOCS_WEEKS="$ROOT/docs/weeks"
INC_LINE="{% include topnav.md %}"

[[ -d "$DOCS_WEEKS" ]] || { echo "Not found: $DOCS_WEEKS" >&2; exit 1; }

HEADER_TMP="$(mktemp)"
LINES_TMP="$(mktemp)"
trap 'rm -f "$HEADER_TMP" "$LINES_TMP"' EXIT

{
  echo "---"
  echo "title: Weekly plans and quizzes"
  echo "---"
  echo "$INC_LINE"
  echo
  echo "# Weekly plans and quizzes"
  echo
} > "$HEADER_TMP"

find "$DOCS_WEEKS" -maxdepth 1 -type d -name 'week-*' -print0 \
| while IFS= read -r -d '' dir; do
  base="$(basename "$dir")"              # week-12
  num="$(printf "%s" "$base" | sed -E 's/^week-([0-9]+)$/\1/')"
  [[ "$num" =~ ^[0-9]+$ ]] || continue

  plan_md="$dir/this-week.md"
  quiz_md="$dir/quiz.md"
  teach_md="$dir/lesson-plan.md"

  plan_link="{{ site.baseurl }}/weeks/$base/this-week.html"
  quiz_link="{{ site.baseurl }}/weeks/$base/quiz.html"
  lp_link="{{ site.baseurl }}/weeks/$base/lesson-plan.html"

  line="- Week $num"
  [[ -f "$plan_md"  ]] && line="$line — Plan: [$plan_link]($plan_link)"
  [[ -f "$quiz_md"  ]] && line="$line — Quiz: [$quiz_link]($quiz_link)"
  [[ -f "$teach_md" ]] && line="$line — Teacher: [$lp_link]($lp_link)"

  printf '%03d|%s\n' "$num" "$line" >> "$LINES_TMP"
done

{
  cat "$HEADER_TMP"
  if [[ -s "$LINES_TMP" ]]; then
    sort -t'|' -k1,1n "$LINES_TMP" | cut -d'|' -f2-
  else
    echo "_No weeks found yet._"
  fi
} > "$DOCS_WEEKS/index.md"

echo "Rebuilt $DOCS_WEEKS/index.md"