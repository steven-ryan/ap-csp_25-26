---
title: Week 2 — Quiz
---
{% include topnav.md %}

# Mini-Quiz (6–8 min) — Week 2: Procedures, Parameters, Boolean Logic

Based on: Week 1 self-study (AP Daily: variables, conditionals, loops, procedures, lists) and Week 1 in-class work

Instructions
- No notes. Show your reasoning. Time: 6–8 minutes.

1) Define and call a procedure with a parameter (AP pseudocode)
Write a procedure greet(name) that DISPLAYs "Hello, " + name + "!" and show how to call it for the name "Ada".

<details markdown="1"><summary>Answer</summary>

```text
PROCEDURE greet(name)
  DISPLAY("Hello, " + name + "!")
END PROCEDURE

# Call
greet("Ada")
```

Explanation: PROCEDURE defines a named block; parameter name receives the argument "Ada".
</details>

2) Return vs DISPLAY (what is printed?)
What is displayed by the following?

```text
PROCEDURE add(x, y)
  RETURN x + y
END PROCEDURE

PROCEDURE add_and_show(x, y)
  DISPLAY(x + y)
END PROCEDURE

DISPLAY( add(2, 3) )
result ← add_and_show(2, 3)
DISPLAY(result)
```

<details markdown="1"><summary>Answer</summary>
- add(2,3) returns 5 → DISPLAY prints 5.
- add_and_show(2,3) DISPLAYs 5 but RETURNS nothing (no value) → result gets null.
- DISPLAY(result) prints null.

Output (in order): 5, 5, null.
</details>

3) Boolean logic (truth table reasoning)
Evaluate each expression (true/false) given x ← 4, y ← 7.

a) (x < 5) AND (y = 7)
b) (x ≥ 4) OR (y < 0)
c) NOT(x = 4)

<details markdown="1"><summary>Answer</summary>
a) true AND true → true
b) true OR false → true
c) NOT(true) → false
</details>

4) Input validation (REPEAT UNTIL)
Write AP pseudocode that repeats INPUT() until the user enters a number from 1 to 5 (inclusive). When valid, DISPLAY("OK").

<details markdown="1"><summary>Answer</summary>

```text
REPEAT
  SET n ← INPUT()
UNTIL (n ≥ 1) AND (n ≤ 5)
DISPLAY("OK")
```

Notes: AP pseudocode treats INPUT() as text; range check shown conceptually.
</details>

5) Parameter vs argument (short response)
In 1–2 sentences, define parameter vs argument and give one example from Q1.

<details markdown="1"><summary>Answer</summary>
A parameter is the variable in a procedure definition (e.g., name in PROCEDURE greet(name)). An argument is the actual value passed at the call site (e.g., "Ada" in greet("Ada")).
</details>

6) Lists (indexing is 1-based in AP pseudocode)
Given L ← ["A","B","C","D"], answer:
a) What does DISPLAY(L[3]) show? 
b) Write AP pseudocode to DISPLAY every item in L, one per line.

<details markdown="1"><summary>Answer</summary>
a) "C" — AP pseudocode is 1-based (L[1]="A", L[2]="B", L[3]="C").
b)
```text
FOR EACH item IN L
  DISPLAY(item)
END FOR EACH
```
Notes: FOR EACH iterates elements directly; no index math needed.
</details>
