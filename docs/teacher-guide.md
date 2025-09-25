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
