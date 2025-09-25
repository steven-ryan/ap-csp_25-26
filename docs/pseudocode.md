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

