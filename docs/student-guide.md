---
title: Student guide — submissions via Pull Request
---

# Student guide — submissions via Pull Request

Steps (fork-first workflow)
1) Fork: https://github.com/steven-ryan/ap-csp_25-26
2) Create branch week-NN (e.g., week-06)
3) Add file: student-submissions/week-NN/submission.md using templates/week-submission-template.md
4) Commit and push to your fork
5) Open a Pull Request to the upstream main and wait for checks to pass

Windows commands (Git Bash)
```bash
git config --global user.name "First Last"
git config --global user.email "email@example.com"
git clone https://github.com/<your-username>/ap-csp_25-26.git
cd ap-csp_25-26
git remote add upstream https://github.com/steven-ryan/ap-csp_25-26.git
git checkout -b week-01
mkdir -p "student-submissions/week-01"
cp "templates/week-submission-template.md" "student-submissions/week-01/submission.md"
git add "student-submissions/week-01/submission.md"
git commit -m "Week 01 submission"
git push -u origin week-01
# Open PR: base repo steven-ryan/ap-csp_25-26, base: main, compare: week-01
```

Submission must include
- Title “# Week NN Submission”
- “MakeCode Links” section
- “Reflection” section (3–5 bullets)