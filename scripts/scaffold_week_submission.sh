#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: bash scripts/scaffold_week_submission.sh <NN>" >&2
  exit 1
fi

NN="$1"
if ! [[ "$NN" =~ ^[0-9]{2}$ ]]; then
  echo "Week must be two digits, e.g., 01, 02, ..., 32" >&2
  exit 1
fi

ROOT="$(cd -- "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEST="$ROOT/student-submissions/week-$NN"
TPL="$ROOT/templates/student-week"

mkdir -p "$DEST/homework" "$DEST/quiz" "$DEST/class-exercises"

# submission.md
if [[ -f "$TPL/submission.md" ]]; then
  sed "s/Week NN/Week $NN/g" "$TPL/submission.md" > "$DEST/submission.md"
else
  cat > "$DEST/submission.md" <<EOF
# Week $NN Submission

MakeCode Links
- Link 1: https://makecode.com/...

Reflection
- What I built and the main concept practiced.
- One bug I hit and how I fixed it.
- One benefit and one risk (IOC).
- What I want to improve next week.
EOF
fi

# Seed folder READMEs
[[ -f "$TPL/homework/README.md" ]] && cp "$TPL/homework/README.md" "$DEST/homework/README.md" || echo "# Homework" > "$DEST/homework/README.md"
[[ -f "$TPL/quiz/README.md"      ]] && cp "$TPL/quiz/README.md"      "$DEST/quiz/README.md"      || echo "# Quiz" > "$DEST/quiz/README.md"
[[ -f "$TPL/class-exercises/README.md" ]] && cp "$TPL/class-exercises/README.md" "$DEST/class-exercises/README.md" || echo "# Class Exercises" > "$DEST/class-exercises/README.md"

echo "Scaffolded student-submissions/week-$NN/"
echo "Edit $DEST/submission.md and add artifacts in subfolders as needed."