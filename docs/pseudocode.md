---
title: AP CSP pseudocode → Python
---
{% include topnav.md %}

Check this lines up with offical guide:
https://apcentral.collegeboard.org/media/pdf/ap-computer-science-principles-exam-reference-sheet.pdf


# AP CSP Pseudocode vs Python Reference

The AP Exam provides the pseudocode reference sheet.
Below are the main constructs **side-by-side with Python**.

---

## Variables and Assignment

| AP CSP Pseudocode | Python Equivalent |
| ----------------- | ----------------- |
| `a ← 5`           | `a = 5`           |
| `name ← "AP CSP"` | `name = "AP CSP"` |

---

## Math Operators

| AP CSP Pseudocode | Python Equivalent |
| ----------------- | ----------------- |
| `x ← 7 MOD 3`     | `x = 7 % 3`       |
| `+ , - , * , /`   | `+ , - , * , /`   |

---

## Logical Operators

| AP CSP Pseudocode | Python Equivalent |
| ----------------- | ----------------- |
| `NOT`             | `not`             |
| `AND`             | `and`             |
| `OR`              | `or`              |

---

## Relational Operators

| AP CSP Pseudocode | Python Equivalent |
| ----------------- | ----------------- |
| `=`               | `==`              |
| `≠`               | `!=`              |
| `< , > , ≤ , ≥`   | `< , > , <= , >=` |

---

## Selection (Conditionals)

| AP CSP Pseudocode                                                                | Python Equivalent                                                    |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `<br />IF (condition)<br />{<br>   <block><br>}<br>ELSE<br>{<br>   <block><br>}<br>` | `python<br>if condition:<br>    # block<br>else:<br>    # block<br>` |

---

## Repetition

| AP CSP Pseudocode                                          | Python Equivalent                                   |
| ---------------------------------------------------------- | --------------------------------------------------- |
| `<br>REPEAT n TIMES<br>{<br>   <block><br>}<br>`           | `python<br>for i in range(n):<br>    # block<br>`   |
| `<br>REPEAT UNTIL (condition)<br>{<br>   <block><br>}<br>` | `python<br>while not condition:<br>    # block<br>` |
| `<br>FOR EACH item IN list<br>{<br>   <block><br>}<br>`    | `python<br>for item in list:<br>    # block<br>`    |

---

## Procedures

| AP CSP Pseudocode                                          | Python Equivalent                                  |
| ---------------------------------------------------------- | -------------------------------------------------- |
| `<br>PROCEDURE add(a, b)<br>{<br>   RETURN a + b<br>}<br>` | `python<br>def add(a, b):<br>    return a + b<br>` |

---

## Strings

| AP CSP Pseudocode              | Python Equivalent              |
| ------------------------------ | ------------------------------ |
| `word ← "HELLO"`               | `word = "HELLO"`               |
| `letter ← word[1]` *(1-based)* | `letter = word[0]` *(0-based)* |
| `LENGTH(word)`                 | `len(word)`                    |
| `CONCAT(a, b)`                 | `a + b`                        |

---

## Lists

| AP CSP Pseudocode       | Python Equivalent                                       |
| ----------------------- | ------------------------------------------------------- |
| `myList ← [10, 20, 30]` | `myList = [10, 20, 30]`                                 |
| `APPEND(myList, 40)`    | `myList.append(40)`                                     |
| `INSERT(myList, 2, 99)` | `myList.insert(1, 99)` *(Python index 1 = CSP index 2)* |
| `REMOVE(myList, 2)`     | `myList.pop(1)`                                         |
| `LENGTH(myList)`        | `len(myList)`                                           |

---

## Random

| AP CSP Pseudocode   | Python Equivalent                                          |
| ------------------- | ---------------------------------------------------------- |
| `x ← RANDOM(1, 10)` | `python<br>import random<br>x = random.randint(1, 10)<br>` |

---

## Input & Output

| AP CSP Pseudocode | Python Equivalent |
| ----------------- | ----------------- |
| `a ← INPUT()`     | `a = input()`     |
| `DISPLAY(a)`      | `print(a)`        |

---

## Key Differences

* **Indexing**: AP CSP lists/strings start at **1**, Python starts at **0**.
* **Numbers**: AP CSP pseudocode has **no overflow or size limits**. Python supports arbitrarily large integers.
* **Syntax**: AP CSP uses `{ }` or indentation — both accepted in exams. Python strictly uses indentation.
* **Keywords**: On the AP exam, **students must use the given pseudocode keywords**, not Python.

---




## Previous notes - may be included above
// AP CSP pseudocode → Python

General
- SET x ← 5  →  x = 5
- DISPLAY(x) → print(x)
- INPUT()    → input()  (cast with int(...), float(...) as needed)
- RANDOM(a, b) → random.randint(a, b)  (inclusive)
- a MOD b → a % b
- AND/OR/NOT → and/or/not
- = (equality) in CSP pseudocode → == in Python

Conditionals
```text
IF condition
  <block>
ELSE IF other
  <block>
ELSE
  <block>
END IF
```
Python
```python
if condition:
    ...
elif other:
    ...
else:
    ...
```

Loops
 REPEAT UNTIL: INPUT() until the user enters a number from 1 to 5 (inclusive). When valid, DISPLAY(“OK”).
```
REPEAT
  SET n ← INPUT()
UNTIL (n ≥ 1) AND (n ≤ 5)
DISPLAY("OK")
```
- REPEAT n TIMES → Python for over range(n)
```python
for i in range(n):   # i = 0..n-1
    ...
```
- REPEAT UNTIL condition → loop until condition true
```python
while True:
    ...
    if condition:
        break
```
- FOR EACH item IN list → Python for element
```python
for item in L:
    ...
```

Lists (note: AP pseudocode is 1-based; Python is 0-based)
- L[i] (AP, 1-based) → L[i-1] (Python)
- LENGTH(L) → len(L)
- APPEND(L, x) → L.append(x)
- INSERT(L, i, x) → L.insert(i-1, x)   # position i in AP
- REMOVE(L, i) → L.pop(i-1)
- x IN L → x in L
- Last element: L[LENGTH(L)] (AP) → L[len(L)-1] or L[-1] (Python)

Strings
- Treat like lists of chars in Python: s[i] (0-based), len(s), substring → slicing s[a:b]

Examples
AP
```text
SET total ← 0
REPEAT 3 TIMES
  SET total ← total + 2
END REPEAT
DISPLAY(total)
```
Python
```python
total = 0
for _ in range(3):
    total = total + 2
print(total)  # 6
```