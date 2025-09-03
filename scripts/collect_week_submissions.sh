#!/usr/bin/env bash
set -euo pipefail
# Usage: bash scripts/collect_week_submissions.sh <NN>  > summary.md

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <NN>" >&2
  exit 1
fi

NN="$1"
if ! [[ "$NN" =~ ^[0-9]{2}$ ]]; then
  echo "Week must be two digits, e.g., 01" >&2
  exit 1
fi

ROOT="$(cd -- "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "# Week $NN — Submissions summary"
echo

# Find both styles: week-NN at root or under a student folder
find "$ROOT/student-submissions" -type f -path "*/week-$NN/submission.md" | sort | while read -r f; do
  # Derive a label (student folder if present)
  parent="$(basename "$(dirname "$(dirname "$f")")")"        # could be 'student-submissions' or student name
  label="$parent"
  if [[ "$label" == "student-submissions" ]]; then
    label="(no student folder)"
  fi

  rel="${f#$ROOT/}"
  echo "## Submission — $label"
  echo "_$rel_"
  echo

  # Extract MakeCode Links section
  awk '
    BEGIN{in_links=0}
    /^MakeCode Links/ {in_links=1; print "MakeCode Links"; next}
    /^#/ && in_links {in_links=0}
    in_links && NF {print}
  ' "$f" | sed 's/^/- /' || true
  echo

  # Extract Before Class Notes section if present
  awk '
    BEGIN{in_notes=0}
    /^Before Class Notes/ {in_notes=1; print "Before Class Notes"; next}
    /^#/ && in_notes {in_notes=0}
    in_notes && NF {print}
  ' "$f" | sed 's/^/- /' || true
  echo
done