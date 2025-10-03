
---
title: Week 5 — Quiz
---
{% include topnav.md %}

# Mini-Quiz (6–8 min) — Week 5: Intellectual Property, Digital Dilemmas, Pseudocode, Unit 1 Review

---

## Q1. What is intellectual property? Give an example related to digital content.

<details markdown="1">
<summary>Answer</summary>
Intellectual property refers to creations of the mind, such as inventions, art, music, or software, that are protected by law. Example: Copyrighted music, software code, or digital artwork.
</details>

---

## Q2. Why is it important to respect intellectual property rights when using digital content?

<details markdown="1">
<summary>Answer</summary>
Respecting intellectual property rights ensures creators are credited and compensated, and it is required by law. Using content without permission can be unethical or illegal.
</details>

---

## Q2b. What is a Creative Commons license?

<details markdown="1">
<summary>Answer</summary>
A Creative Commons license is a public copyright license that allows creators to specify how others can use, share, and build upon their work. It provides a flexible range of protections and permissions for creative content.
</details>

---

## Q2c. Why might someone choose to use a Creative Commons license for their digital work?

<details markdown="1">
<summary>Answer</summary>
To encourage sharing, collaboration, and reuse of their work while still retaining some rights. It makes it easier for others to legally use, adapt, and distribute content for education, research, or creative projects.
</details>

---

## Q2d. Name and briefly describe two types of Creative Commons licenses.

<details markdown="1">
<summary>Answer</summary>
1. CC BY (Attribution): Others can use, share, and adapt the work as long as they give credit to the creator.
2. CC BY-NC (Attribution-NonCommercial): Others can use and adapt the work for non-commercial purposes only, with credit to the creator.
</details>

---

## Q3. Describe a digital information dilemma and explain why it is challenging.

<details markdown="1">
<summary>Sample Answer</summary>
Example: Sharing copyrighted music online makes it easy for people to access, but it can hurt artists' income and break copyright laws. The challenge is balancing access to information with respecting creators' rights.
</details>

---

## Q4. Pseudocode: What does the following program display?

```text
SET total ← 0
REPEAT 5 TIMES
	SET total ← total + 2
END REPEAT
DISPLAY(total)
```

<details markdown="1">
<summary>Answer</summary>
total: 0 → 2 → 4 → 6 → 8 → 10; output 10.
</details>

---

## Q5. Pseudocode: Complete the code to count how many numbers in L are odd. Use FOR EACH.

```text
# L ← [4, 7, 9, 2]
SET count ← 0
# your code here
DISPLAY(count)
```

<details markdown="1">
<summary>Answer</summary>
FOR EACH x IN L
	IF (x MOD 2 = 1)
		SET count ← count + 1
	END IF
END FOR EACH
DISPLAY(count)  # 2
</details>

---

## Q6. What is a bit? What is a byte?

<details markdown="1">
<summary>Answer</summary>
A bit is a binary digit (0 or 1). A byte is 8 bits.
</details>

---

## Q7. What is binary, and why do computers use it?

<details markdown="1">
<summary>Answer</summary>
Binary is a way of representing information using only two options (0 and 1). Computers use binary because their hardware is based on two states (on/off).
</details>

---

## Q8. What is overflow in binary addition?

<details markdown="1">
<summary>Answer</summary>
Overflow occurs when the result of a binary addition is too large to fit in the available number of bits, causing the value to wrap around or lose data.
</details>

---

## Q9. What is lossless compression? What is lossy compression?

<details markdown="1">
<summary>Answer</summary>
Lossless compression reduces file size without losing any information (e.g., ZIP, PNG). Lossy compression reduces file size by removing some data, resulting in a loss of quality (e.g., JPEG, MP3).
</details>

---

## Q10. Write pseudocode to find the largest number in a list L.

<details markdown="1">
<summary>Sample Solution</summary>
SET max ← L[1]
FOR EACH x IN L
	IF x > max
		SET max ← x
	END IF
END FOR EACH
DISPLAY(max)
</details>

---

## Q11. Write pseudocode to count how many times the value 7 appears in a list L.

<details markdown="1">
<summary>Sample Solution</summary>
SET count ← 0
FOR EACH x IN L
	IF x = 7
		SET count ← count + 1
	END IF
END FOR EACH
DISPLAY(count)
</details>

---

## Q12. Write pseudocode to compute the average of numbers in a list L.

<details markdown="1">
<summary>Sample Solution</summary>
SET sum ← 0
SET n ← LENGTH(L)
FOR EACH x IN L
	SET sum ← sum + x
END FOR EACH
SET avg ← sum / n
DISPLAY(avg)
</details>
