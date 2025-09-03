# AP CSP — Student Guide

Start here (GitHub Pages)
- Docs site: https://steven-ryan.github.io/ap-csp_25-26/
- Student guide: docs/student-guide.md
- Weekly schedule: docs/schedule.md

How to submit (quick version)
1) Fork https://github.com/steven-ryan/ap-csp_25-26
2) Create branch week-NN
3) Scaffold your folder:
   bash scripts/scaffold_week_submission.sh NN   # e.g., 01
4) Edit student-submissions/week-NN/submission.md and add artifacts under homework/, quiz/, class-exercises/
5) Push and open a Pull Request to upstream main

Notes
- Checks must pass: format + PII scan + submission validator.
- No personal info or join codes.

## Weekly tasks (teacher)
- Update the new week’s docs under docs/weeks/week-N/ (this-week.md, quiz.md).
- Rebuild the Weeks index and set the highlight:
  - bash scripts/rebuild_weeks_index.sh
  - bash scripts/set_current_week.sh N   # e.g., 2
- Commit via PR (recommended):
  - git checkout -b week-N-docs
  - git add docs/weeks/** docs/schedule.md
  - git commit -m "Week N: update plan/quiz; set current week; rebuild index"
  - git push -u origin week-N-docs

## Weekly tasks (student)
- Scaffold and submit your week folder and reflection:
  - git checkout -b week-NN
  - bash scripts/scaffold_week_submission.sh NN   # e.g., 01
  - git add student-submissions/week-NN
  - git commit -m "Week NN submission"
  - git push -u origin week-NN
  - Open a Pull Request to upstream main

## PR to update docs:
```
cd "/.../School/2025-2026/AP Computer Science Principles/course"

chmod +x scripts/set_current_week.sh

# Example: set to Week 1 (change the number each week)
bash scripts/set_current_week.sh 1

# Commit via PR (recommended)
git checkout -b set-week-01
git add docs/schedule.md scripts/set_current_week.sh
git commit -m "Docs: set current week to 1"
git push -u origin set-week-01
# Open PR and merge when checks pass
```
