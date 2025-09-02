#!/usr/bin/env bash
set -euo pipefail

# Re-exec with bash if invoked via sh
if [[ -z "${BASH_VERSION:-}" ]]; then
  exec /usr/bin/env bash "$0" "$@"
fi

tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT

find student-submissions -type f -name submission.md -print0 2>/dev/null \
| while IFS= read -r -d '' file; do
  echo "Checking $file"
  fail_one=0
  grep -qi '^# Week ' "$file"        || { echo "Missing title in $file"; fail_one=1; }
  grep -qi '^MakeCode Links' "$file" || { echo "Missing 'MakeCode Links' in $file"; fail_one=1; }
  grep -qi '^Reflection' "$file"     || { echo "Missing 'Reflection' in $file"; fail_one=1; }
  if (( fail_one != 0 )); then echo 1 >>"$tmp"; fi
done

if [[ -s "$tmp" ]]; then
  echo "Validation failed."
  exit 1
else
  echo "Validation passed."
fi