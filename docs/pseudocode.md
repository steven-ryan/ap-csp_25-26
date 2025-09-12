---
title: AP CSP pseudocode → Python
---
{% include topnav.md %}

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