---
title: Teacher Guide — Weekly workflow
---
{% include topnav.md %}

# Teacher Guide

Fllow code.org in order, suplement with barrons and Make code

Weekly checklist (N = current week number)
1. Update docs/weeks/week-N/:
   - this-week.md (student plan)
   - quiz.md (clear prompts + inline answers using <details markdown="1">this</details>)
2. Rebuild Weeks index and set current week:
   - #bash scripts/rebuild_weeks_index.sh
   - bash scripts/set_current_week.sh N
3. Commit via PR:
   - git checkout -b week-N-docs
   - git add docs/weeks/** docs/schedule.md
   - git commit -m "Week N: update plan/quiz; set current week; rebuild index"
   - git push -u origin week-N-docs
   - Open PR → wait for checks (pii_scan, weekly_validate) → merge

### Quick: commit all updates on your branch
Use this to capture every modified/added/deleted file before opening the PR.

```bash
# create/switch to your docs branch if not already on it
git checkout -b week-N-docs || git checkout week-N-docs

# review changes
git status

# stage all changes (adds, edits, deletes)
git add -A

# commit with a clear message
git commit -m "Week N: update plans/quizzes/lesson plan; rebuild index; set current week"

# push to origin
git push -u origin week-N-docs
```

Tip: if you get “nothing to commit”, you’ve already committed or have no changes.

Consistency aids
- Inline answers: use <details markdown="1"><summary>Answer</summary> … </details>.
- Run: bash scripts/audit_weeks.sh to verify all weeks have key sections and inline answers.
- Week index: docs/weeks/index.md is auto-sorted by rebuild_weeks_index.sh.

Resources to weave in
- Code.org CSP: Videos, App Lab levels, CFUs. Use 1–2 levels as:
  - In class: 10–15 min guided demo + one CFU as exit ticket.
  - After class: 2–4 levels for practice; review CFU results next session.
- AP Daily (AP Classroom): assign short clips (variables, conditionals, loops, procedures, lists).
- Barron’s:
  - Weekly: Quick Quiz for assigned reading.
  - Every 3–4 weeks: 10–15 item timed mini-set from Unit Review/Practice Exam.

Troubleshooting CI
- Required checks not showing: ensure job IDs match protection (pii_scan, weekly_validate).
- Markdown in answers not rendering: details must include markdown="1".