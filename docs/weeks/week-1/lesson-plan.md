---
title: Week 1 — Lesson Plan
---
{% include topnav.md %}

# Week 1 — MakeCode CSP Wrapper

Primary lesson (MakeCode)
- Use: Unit 1, Day 1 — Intro to AP CSP
  https://microsoft.github.io/makecode-csp/unit-1/day-1/intro-ap-csp
- Editor: Browser-based; toggle “Show Python” where available.

Phase focus
- Foundations (Programming/CRD/AAP/DAT)

In-class (teacher)
- Orient students to the week’s MakeCode page(s); model small change → test → iterate.
- Cold-call 1–2 quick checks aligned to AP pseudocode (DISPLAY → print, REPEAT → loops).
- If applicable to Create PT weeks: checkpoint list use and a student-developed procedure with parameter(s).

In-class (student)
- Complete the week’s MakeCode tasks and at least one extension.
- Save/share project link; note one bug fixed and how.

Homework (≈120–180 min)
- Finish MakeCode tasks; complete one extension.
- AP Classroom (15–20 min): CRD 1.1; AAP basics (variables, conditionals, loops)
- Barron’s (20–30 min): About the AP CSP Exam; Programming Fundamentals

Self-study (optional, 15–30 min)
- AP Daily: AP Daily clips on variables, conditionals, loops, procedures, lists

Checks and deliverables
- Mini-quiz (6–8 min): 3–4 items (pseudocode→Python, trace, concept check).
- Submit: MakeCode project link + 3–5 bullet reflection.

References
- AP CSP Exam Reference Sheet (public on AP Central).
- Blown to Bits (free): https://www.bitsbook.com
- Pseudocode mapping: {{ site.baseurl }}/pseudocode.html
- Acronym key: {{ site.baseurl }}/glossary.html


# Teacher Lesson Plan — Week 1

Focus
- Foundations (Programming/CRD/AAP/DAT)

In-class guidance
- Model “small change → test → iterate”; cold‑call pseudocode checks (DISPLAY → print; REPEAT → loops).

Quick checks
- Parameter vs argument; return vs print; list traversal; input validation (as relevant).

Assess
- Mini‑quiz (6–8 min) — pseudocode→Python, trace, concept check; AP Classroom completion check.

## Teacher prep (before class)
- Review and merge student PRs for Week 01 on GitHub (ensure checks pass).
- Sync local repo:
  - git checkout main && git pull
- Generate a quick summary of student links and before‑class notes (optional):
  - bash scripts/collect_week_submissions.sh 01 > /tmp/week-01-summary.md
  - Open /tmp/week-01-summary.md during class for quick access to links.
- Verify this week’s docs are live:
  - Plan: {{ site.baseurl }}/weeks/week-1/this-week.html
  - Quiz: {{ site.baseurl }}/weeks/week-1/quiz.html

## How to use this week
- In class: pick a short code.org App Lab level for variables or conditionals as a live demo; use one CFU as the exit ticket.
- After class: 2–4 code.org levels + AP Daily clips; Barron’s Quick Quiz for the assigned reading.
- Periodic: every 3–4 weeks, pull a Barron’s mini set as a timed check.

## Supplemental resources (optional)
- Code.org CSP (free): https://code.org/en-US/curriculum/computer-science-principles
  - Use 1–2 short App Lab levels on variables/conditionals/loops from the Algorithms & Programming lessons as:
    - In class: a 10–15 min guided demo + 1 CFU (“Check for Understanding”) as an exit ticket.
    - After class: assign 2–4 levels for practice; review CFU results together.
  - Teacher tools: embedded videos, printable lesson plans, CFU auto-graded items, rubrics.
- AP Daily (AP Classroom): short clips on variables, conditionals, loops, procedures, lists (see student “How to find AP Daily” in the Week plan).

## Barron’s usage (assessment)
- Weekly: have the student complete the “Quick Quiz” for the pages assigned (About AP CSP; Programming Fundamentals). Review any misses next class.
- Every 3–4 weeks: give a short set (10–15 items) from a Barron’s Unit Review or Practice Exam section under timed conditions; discuss strategies/errors.

## Teacher prep (before class)
- Review and merge student PRs for Week 01 on GitHub (ensure checks pass).
- Sync local repo:
  - git checkout main && git pull
- Generate a quick summary of student links and before‑class notes (optional):
  - bash scripts/collect_week_submissions.sh 01 > /tmp/week-01-summary.md
  - Open /tmp/week-01-summary.md during class for quick access to links.
- Verify this week’s docs are live:
  - Plan: {{ site.baseurl }}/weeks/week-1/this-week.html
  - Quiz: {{ site.baseurl }}/weeks/week-1/quiz.html
