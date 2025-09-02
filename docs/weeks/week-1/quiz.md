---
title: Week 1 — Quiz
---
{% include topnav.md %}

# Mini-Quiz (6–8 min) — Week 1: Variables/Conditionals

Based on: MakeCode CSP Unit 1 — Day 1 (Intro, variables, conditionals); AP Classroom CRD 1.1; AAP basics (variables, conditionals, loops); Barron’s About AP CSP; Programming Fundamentals

Instructions
- No notes. Show work where helpful. Time: 6–8 minutes.

1) Predict the output (trace variables)
Given the AP pseudocode, what is displayed?

```text
SET a ← 3
IF a < 5
  SET a ← a + 2
ELSE
  SET a ← a - 2
END IF
DISPLAY(a)
```

<details markdown="1"><summary>Answer</summary>
a starts as 3, 3 < 5 is true, so a ← 3 + 2 = 5. DISPLAY prints 5.
</details>

2) Translate AP pseudocode to Python
Write equivalent Python for this pseudocode. Assume age is typed as an integer.

```text
SET age ← INPUT()
IF age ≥ 13
  DISPLAY("Teen or older")
ELSE
  DISPLAY("Child")
END IF
```

<details markdown="1"><summary>Answer</summary>

```python
age = int(input())
if age >= 13:
    print("Teen or older")
else:
    print("Child")
```

Notes: INPUT() returns text; cast to int. DISPLAY maps to print.
</details>

3) Bug hunt (logic)
The goal: print "Even" when n is divisible by 2, otherwise "Odd". What’s wrong, and fix it in AP pseudocode.

```text
SET n ← 7
IF n MOD 2 = 1
  DISPLAY("Even")
ELSE
  DISPLAY("Odd")
END IF
```

<details markdown="1"><summary>Answer</summary>
The condition is reversed. n MOD 2 = 0 means even.

```text
SET n ← 7
IF n MOD 2 = 0
  DISPLAY("Even")
ELSE
  DISPLAY("Odd")
END IF
```

Explanation: MOD gives the remainder. Even numbers have remainder 0 when divided by 2.
</details>

4) Short response
When would you use a variable instead of a constant in MakeCode or Python? Give one short example.

<details markdown="1"><summary>Answer</summary>
Use a variable when the value can change during the program (e.g., a running total, score, user input). Constants are for values that don’t change (like PI, max lives).

Example: keep a score that increases when the player earns points.
</details>

5) Loop trace (REPEAT TIMES)
What does the program display?

```text
SET total ← 1
REPEAT 3 TIMES
  SET total ← total * 2
END REPEAT
DISPLAY(total)
```

<details markdown="1"><summary>Answer</summary>
Start 1 → after 1st: 2 → after 2nd: 4 → after 3rd: 8. DISPLAY prints 8.
</details>
