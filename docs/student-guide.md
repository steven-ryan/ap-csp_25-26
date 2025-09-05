---
title: Student Guide — How to submit weekly work
---
{% include topnav.md %}

# Student Guide

**Privacy reminder — public repo**
- Do not commit personally identifiable information (PII): full names, emails, phone numbers, addresses, school names/schedules, photos of faces, class/join codes, invite links, tokens/keys.
- Use your GitHub handle or first name only (if permitted). Crop/blur names in screenshots.

What you submit each week
- File: student-submissions/week-NN/submission.md (NN is two digits, e.g., 01)
- Include:
  - MakeCode Links: at least one project link (https://makecode.com/…)
  - Before Class Notes: bullets (what you watched/read; notes on what you learned;  questions, things to discuss)
  - Reflection: 3–5 bullets (what you built, one bug + fix, one benefit and one risk — IOC)

Before you start (one-time)
- Fork the course repo.
- Clone your fork on your Mac:
  - git clone https://github.com/<your-username>/ap-csp_25-26
  - cd ap-csp_25-26

Keep your fork up to date (each week)
- Add upstream once: git remote add upstream https://github.com/steven-ryan/ap-csp_25-26
- Quick sync (one line):

    ```text
    git pull --rebase upstream main
    ```


Submit your weekly work (Week NN)
- Create a branch: git checkout -b week-NN
- Scaffold your folder: bash scripts/scaffold_week_submission.sh NN    # e.g., 01
- Edit student-submissions/week-NN/submission.md
- Add any artifacts under:
  - student-submissions/week-NN/homework/
    - Tip: create homework/before-class-notes.md and link it from submission.md
  - student-submissions/week-NN/class-exercises/
  - student-submissions/week-NN/quiz/ (usually empty)
- Commit and push:
  - git add student-submissions/week-NN
  - git commit -m "Week NN submission"
  - git push -u origin week-NN
- Open a Pull Request to upstream main (compare: your fork’s week-NN -> steven-ryan/ap-csp_25-26 main)

Passing checks
- pii_scan: no personal info, join codes, or secrets in your files.
- weekly_validate: your submission.md must have:
  - Title line “# Week NN Submission”
  - At least one link under “MakeCode Links”
  - At least 3 reflection bullets under “Reflection”
- No PII: PRs with PII will be rejected; fix and resubmit.

Tips
- Use two digits for week number (01, 02, …).
- Keep commits small and messages clear.
- Ask if you hit merge conflicts; we can rebase together.