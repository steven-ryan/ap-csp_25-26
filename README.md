# AP CSP — Student Guide

Start here (GitHub Pages)
- Docs site: https://steven-ryan.github.io/ap-csp_25-26/
- Student guide: docs/student-guide.md
- Weekly schedule: docs/schedule.md


How to submit (quick version)
1) Fork https://github.com/steven-ryan/ap-csp_25-26
2) Create branch week-NN
3) Add student-submissions/week-NN/submission.md (use templates/week-submission-template.md)
4) Push and open a Pull Request to upstream main

Notes
- Checks must pass: format + PII scan.
- No personal info or join codes.



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
