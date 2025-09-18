---
title: Week 4 — Quiz
---
{% include topnav.md %}

# Mini-Quiz (6–8 min)

Q1–Q4 aligned to: Unit 1 — Abstraction/Functions; AP Classroom AAP‑3.* (procedures/abstraction) and AAP‑2.* (lists); Barron’s Procedures/Parameters; Abstraction.

---

## Q0. What is an abstraction in computer science?

<details markdown="1">
<summary>Answer</summary>
An abstraction is a simplified representation of something complex that hides unnecessary details, allowing us to focus on high-level operations or ideas.
</details>

---

## Q0b. Give an example of abstraction in programming.

<details markdown="1">
<summary>Answer</summary>
Examples: Using a function to perform a task without knowing its internal code; variables representing data; using a map or list data structure without knowing how it is implemented.
</details>

---

## Q0c. Why are abstractions important in computer science?

<details markdown="1">
<summary>Answer</summary>
Abstractions help manage complexity, make code easier to read and maintain, and allow programmers to build on top of existing solutions without needing to understand every detail.
</details>

---

## Q1. Convert the following binary number to decimal:
101101₂


<details markdown="1">
<summary>Answer</summary>

`101101₂ = 45₁₀`

</details>

---

## Q2. Convert the following decimal number to binary:
27₁₀


<details markdown="1">
<summary>Answer</summary>

`27₁₀ = 11011₂`

</details>

---

## Q3. What is the decimal value of the binary number `1110₂`?

<details markdown="1">
<summary>Answer</summary>

`1110₂ = 14₁₀`

</details>

---

## Q4. Write the binary representation of the decimal number `19`.

<details markdown="1">
<summary>Answer</summary>

`19₁₀ = 10011₂`

</details>

---

## Q5. (Short answer) Why is binary used in computers? (1–2 sentences)

<details markdown="1">
<summary>Sample Answer</summary>

Computers use binary because digital circuits have two stable states (on/off, 1/0), making it reliable and easy to represent data and instructions

---

## Q6. What is overflow in binary addition? Give an example.

<details markdown="1">
<summary>Answer</summary>

Overflow occurs when the result of a binary addition is too large to fit in the available number of bits. For example, adding 1111₂ (15 in decimal) + 1₂ (1 in decimal) in 4 bits gives 10000₂, but only the last 4 bits (0000) are kept, so the result is 0 and the overflow is lost.

</details>

---

## Q7. What happens when a number is too large to be stored in 8 bits?

<details markdown="1">
<summary>Answer</summary>

The value wraps around and only the least significant 8 bits are kept. For example, 255 + 1 = 256, but in 8 bits, 256 is 100000000₂, so only 00000000₂ (0) is stored and the overflow is lost.

</details>

---

## Q8. What is rounding error? Give an example with binary fractions.

<details markdown="1">
<summary>Answer</summary>

Rounding error happens when a number cannot be exactly represented in binary, so it is rounded to the nearest value. For example, 0.1 in decimal cannot be exactly written in binary, so computers store an approximation, which can lead to small errors in calculations.

</details>

---

## Q9. Why do computers sometimes give imprecise answers when adding decimals like 0.1 + 0.2?

<details markdown="1">
<summary>Answer</summary>

Because numbers like 0.1 and 0.2 cannot be exactly represented in binary, their stored values are approximations. When added, the result may not be exactly 0.3 due to these small rounding errors.

</details>


---

## Q10. What is lossless compression? Give an example.

<details markdown="1">
<summary>Answer</summary>
Lossless compression reduces file size without losing any information. The original data can be perfectly reconstructed. Example: ZIP files, PNG images.
</details>

---

## Q11. What is lossy compression? Give an example.

<details markdown="1">
<summary>Answer</summary>
Lossy compression reduces file size by removing some data, resulting in a loss of quality. The original data cannot be perfectly restored. Example: JPEG images, MP3 audio.
</details>

---

## Q12. What is the main trade-off between lossy and lossless compression?

<details markdown="1">
<summary>Answer</summary>
Lossy compression achieves smaller file sizes but loses some information, while lossless keeps all information but may not compress as much.
</details>
