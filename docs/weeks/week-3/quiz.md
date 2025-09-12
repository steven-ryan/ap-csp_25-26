---
title: Week 3 — Quiz
---
{% include topnav.md %}

# Mini-Quiz (6–8 min) — Week 3: Loops and Lists

- What is an analog signal and provide examples
- What is a digital signal and provide examples


<details markdown="1"><summary>Answer</summary>
* analog signals has values that change smoothly over time rather than in discrete intervals.  Examples: Key Fob, radio waves, television waves, or sound waves
* digital signals are analog signals broken in to steps - examples CD, MP3, digital photo, digital electronics e.g. PIR sensor/voltage
</details>


- What is a Bit

<details markdown="1"><summary>Answer</summary>
Bit - A contraction of "Binary Digit"; the single unit of information in a computer, typically represented as a 0 or 1</details>

- What is a byte

<details markdown="1"><summary>Answer</summary>
Byte - 8 bits
</details>

- What is binary, what is decimal

<details markdown="1"><summary>Answer</summary>
Binary - A way of representing information using only two options</details>

Based on: traversal patterns (FOR EACH, REPEAT n TIMES), accumulation, list indexing (AP=1-based vs Python=0-based)

Instructions
- No notes. Show your reasoning. Time: 6–8 minutes.

1. Trace a REPEAT loop
What does the program display?

```text
SET total ← 0
REPEAT 4 TIMES
  SET total ← total + 3
END REPEAT
DISPLAY(total)
```

<details markdown="1"><summary>Answer</summary>
total: 0 → 3 → 6 → 9 → 12; output 12.
</details>

2. FOR EACH traversal (count items meeting a condition)
Complete the pseudocode to count how many numbers in L are even. Use FOR EACH.

```text
# L ← [3, 6, 2, 5]
SET count ← 0
# your code here
DISPLAY(count)
```

<details markdown="1"><summary>Answer</summary>

```text
FOR EACH x IN L
  IF (x MOD 2 = 0)
    SET count ← count + 1
  END IF
END FOR EACH
DISPLAY(count)  # 2
```

Reasoning: 6 and 2 are even → count=2.
</details>

3. Indexing (AP pseudocode is 1-based)
Given L ← ["A","B","C","D"], what does DISPLAY(L[2]) show?

<details markdown="1"><summary>Answer</summary>
"B" — AP pseudocode uses 1-based indexing (L[1]="A", L[2]="B").
</details>

4. Accumulator pattern (sum of list)
Write pseudocode to compute the sum of all values in L and DISPLAY the result.

<details markdown="1"><summary>Answer</summary>

```text
SET sum ← 0
FOR EACH v IN L
  SET sum ← sum + v
END FOR EACH
DISPLAY(sum)
```

Notes: Works for numeric L; for empty L, sum stays 0.
</details>

5. REPEAT UNTIL vs WHILE (concept)
In 1–2 sentences, explain the difference between REPEAT UNTIL condition and a WHILE condition loop in general terms.

<details markdown="1"><summary>Answer</summary>
REPEAT UNTIL runs the body at least once and stops when the condition becomes true. A typical WHILE loop checks the condition first and may run zero times. AP pseudocode uses REPEAT UNTIL to express post-condition loops.
</details>
