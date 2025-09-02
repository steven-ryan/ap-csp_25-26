#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
DOCS_WEEKS="$ROOT/docs/weeks"
INC_LINE="{% include topnav.md %}"

mkdir -p "$DOCS_WEEKS"

gen_page() {
  local src="$1" dest="$2" title="$3"
  [[ -f "$src" ]] || return 0
  mkdir -p "$(dirname "$dest")"
  awk -v inc="$INC_LINE" -v title="$title" '
    BEGIN{
      print "---"
      print "title: " title
      print "---"
      print inc
      print ""
    }
    {
      # rewrite resource links to docs pages
      gsub(/\.\.\/resources\/Pseudocode_to_Python\.md/, "{{ site.baseurl }}/pseudocode.html");
      gsub(/\.\.\/resources\/Glossary_Acronyms\.md/, "{{ site.baseurl }}/glossary.html");
      print
    }
  ' "$src" > "$dest"
}

# Build weeks index page
INDEX_TMP="$(mktemp)"; trap 'rm -f "$INDEX_TMP"' EXIT
{
  echo "---"
  echo "title: Weekly plans and quizzes"
  echo "---"
  echo "$INC_LINE"
  echo
  echo "# Weekly plans and quizzes"
  echo
} > "$INDEX_TMP"

# Move each "week X" dir into docs/weeks/week-X
find "$ROOT" -maxdepth 1 -type d -name 'week *' -print0 | while IFS= read -r -d '' wdir; do
  base="$(basename "$wdir")"                      # "week 4"
  week_num="$(printf "%s" "$base" | sed -E 's/^week[[:space:]]*//')"
  out="$DOCS_WEEKS/week-$week_num"

  gen_page "$wdir/this-week.md"   "$out/this-week.md"   "Week $week_num — Plan"
  gen_page "$wdir/quiz.md"        "$out/quiz.md"        "Week $week_num — Quiz"
  gen_page "$wdir/lesson-plan.md" "$out/lesson-plan.md" "Week $week_num — Lesson Plan"

  # Add to list if anything exists
  if [[ -f "$out/this-week.md" || -f "$out/quiz.md" || -f "$out/lesson-plan.md" ]]; then
    plan_link="{{ site.baseurl }}/weeks/week-$week_num/this-week.html"
    quiz_link="{{ site.baseurl }}/weeks/week-$week_num/quiz.html"
    lp_link="{{ site.baseurl }}/weeks/week-$week_num/lesson-plan.html"
    line="- Week $week_num — Plan: [$plan_link]($plan_link)"
    [[ -f "$out/quiz.md" ]] && line="$line — Quiz: [$quiz_link]($quiz_link)"
    [[ -f "$out/lesson-plan.md" ]] && line="$line — Teacher: [$lp_link]($lp_link)"
    echo "$line" >> "$INDEX_TMP"
  fi

  # Remove original week dir after migration
  rm -rf "$wdir"
  echo "Migrated $base -> $out"
done

mv "$INDEX_TMP" "$DOCS_WEEKS/index.md"
echo "Done. Weeks now live under docs/weeks/"
