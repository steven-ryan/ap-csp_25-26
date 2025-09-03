#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd -- "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
WEeks_DIR="$ROOT/docs/weeks"

updated=0
skipped=0

pad2() {
  printf "%02d" "$1"
}

for dir in "$WEeks_DIR"/week-*; do
  [[ -d "$dir" ]] || continue
  week_num="$(basename "$dir" | sed -nE 's/^week-([0-9]+)$/\1/p')"
  [[ -n "$week_num" ]] || continue
  NN="$(pad2 "$week_num")"
  lp="$dir/lesson-plan.md"

  if [[ ! -f "$lp" ]]; then
    echo "Skip: missing $lp"
    continue
  fi

  need_prep=1
  need_how=1

  grep -q '^## Teacher prep \(before class\)' "$lp" && need_prep=0
  grep -q '^## How to use this week' "$lp" && need_how=0

  # Always normalize week-specific references inside existing blocks
  # - collect_week_submissions.sh NN
  # - site links to this-week.html and quiz.html
  sed -i '' -E \
    -e "s/(collect_week_submissions\.sh )[0-9]{2}/\1$NN/g" \
    -e "s|(weeks/week-)[0-9]+/(this-week\.html)|\1$week_num/\2|g" \
    -e "s|(weeks/week-)[0-9]+/(quiz\.html)|\1$week_num/\2|g" \
    "$lp"

  # Append missing sections to the end (after a blank line)
  if (( need_prep == 1 )); then
    cat >> "$lp" <<EOF

## Teacher prep (before class)
- Review and merge student PRs for Week $NN on GitHub (ensure checks pass).
- Sync local repo:
  - git checkout main && git pull
- Generate a quick summary of student links and before‑class notes (optional):
  - bash scripts/collect_week_submissions.sh $NN > /tmp/week-$NN-summary.md
  - Open /tmp/week-$NN-summary.md during class for quick access to links.
- Verify this week’s docs are live:
  - Plan: {{ site.baseurl }}/weeks/week-$week_num/this-week.html
  - Quiz: {{ site.baseurl }}/weeks/week-$week_num/quiz.html
EOF
  fi

  if (( need_how == 1 )); then
    cat >> "$lp" <<'EOF'

## How to use this week
- In class: pick a short code.org App Lab level for variables or conditionals as a live demo; use one CFU as the exit ticket.
- After class: 2–4 code.org levels + AP Daily clips; Barron’s Quick Quiz for the assigned reading.
- Periodic: every 3–4 weeks, pull a Barron’s mini set as a timed check.
EOF
  fi

  if (( need_prep == 0 && need_how == 0 )); then
    ((skipped++))
  else
    ((updated++))
    echo "Updated: week-$week_num lesson-plan.md (prep: $need_prep, how: $need_how)"
  fi
done

echo "Done. Updated: $updated, Already ok: $skipped"