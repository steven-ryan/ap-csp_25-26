# AP CSP — Course Repo

Start here (GitHub Pages)
- Site: https://steven-ryan.github.io/ap-csp_25-26/
- Student guide: docs/student-guide.md
- Teacher guide: docs/teacher-guide.md
- Weekly schedule: docs/schedule.md
- Weeks (plans/quizzes): docs/weeks/

Privacy — public repo
- Do not commit PII: names, emails, phone numbers, addresses, school names/schedules, faces, class/join codes, invite links, tokens/keys.

Quick start — students
- Fork and clone your fork
- Add upstream once:
```bash
git remote add upstream https://github.com/steven-ryan/ap-csp_25-26
```
- Sync each week:
```bash
git pull --rebase upstream main
```
- Submit Week NN:
```bash
git checkout -b week-NN
bash scripts/scaffold_week_submission.sh NN
git add student-submissions/week-NN
git commit -m "Week NN submission"
git push -u origin week-NN
# Open a PR to upstream main
```

Quick start — teacher
```bash
# Update docs/weeks/week-N/, then:
bash scripts/rebuild_weeks_index.sh
bash scripts/set_current_week.sh N
git checkout -b week-N-docs
git add docs/weeks/** docs/schedule.md
git commit -m "Week N: update plan/quiz; set current week; rebuild index"
git push -u origin week-N-docs
# Open PR and merge when checks pass
```

Checks on PRs
- pii_scan: no personal info or secrets.
- weekly_validate: submission structure/fields must pass.
