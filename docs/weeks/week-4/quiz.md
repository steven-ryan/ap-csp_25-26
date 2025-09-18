title: Week 5 — Quiz
{% include topnav.md %}

# Mini-Quiz (6–8 min) — Week 5: Representing Text & Images

Covers: ASCII, representing text, black & white images, color images (AP CSP, code.org Lessons 6–8)

#TODO
Examples: JPEG, MP3, what information is lost.
why/when/RAW format


---

## Q1. What is ASCII and why is it important in computing?

<details markdown="1">
<summary>Answer</summary>
ASCII (American Standard Code for Information Interchange) is a character encoding standard that assigns numbers to letters, digits, and symbols so computers can represent and process text.
</details>

---

## Q2. What is the ASCII code for the letter 'A'? What about 'a'?

<details markdown="1">
<summary>Answer</summary>
'A' = 65, 'a' = 97 (in decimal)
</details>

---

## Q3. How can black and white images be represented in binary?

<details markdown="1">
<summary>Answer</summary>
Each pixel is represented by a single bit: 0 for white, 1 for black (or vice versa). An image is a grid of these bits.
</details>

---

## Q4. What is a pixel?

<details markdown="1">
<summary>Answer</summary>
A pixel is the smallest unit of a digital image, representing a single point of color or shade.
</details>

---

## Q5. How are color images typically represented in binary?

<details markdown="1">
<summary>Answer</summary>
Each pixel is represented by three values (for Red, Green, Blue channels), with each value stored as a group of bits (often 8 bits per channel, so 24 bits per pixel).
</details>

---

## Q6. What is the difference between a black & white image and a grayscale image in terms of binary representation?

<details markdown="1">
<summary>Answer</summary>
Black & white images use 1 bit per pixel (2 possible values), while grayscale images use more bits per pixel (e.g., 8 bits for 256 shades of gray).
</details>

---

## Q7. Why do computers use binary to represent images and text?

<details markdown="1">
<summary>Answer</summary>
Computers use binary because their hardware is based on two states (on/off), making it efficient to store and process all types of data, including images and text, as sequences of 0s and 1s.
</details>

---

## Q8. (Short answer) Give an example of a binary sequence and what text or image data it could represent.

<details markdown="1">
<summary>Sample Answer</summary>
The binary sequence 01000001 represents the letter 'A' in ASCII. The sequence 11110000 could represent a row of 8 pixels in a black and white image (first 4 black, last 4 white).
</details>
 

---

## Q9. What is a bitmap?

<details markdown="1">
<summary>Answer</summary>
A bitmap is a way of representing an image as a grid of pixels, where each pixel's value is stored in binary. For black and white images, each pixel is typically 1 bit.
</details>

---

## Q10. How does increasing the number of bits per pixel affect an image?

<details markdown="1">
<summary>Answer</summary>
Increasing the number of bits per pixel allows more colors or shades to be represented, resulting in higher image quality and detail.
</details>

---

## Q11. What does RGB stand for, and how is it used in digital images?

<details markdown="1">
<summary>Answer</summary>
RGB stands for Red, Green, Blue. In digital images, each pixel's color is created by combining different intensities of these three colors, usually with 8 bits per channel.
</details>

---

## Q12. Why might a RAW image file be much larger than a JPEG of the same photo?

<details markdown="1">
<summary>Answer</summary>
RAW files store all the data captured by the camera sensor with little or no compression, while JPEG uses lossy compression to reduce file size by removing some data.
</details>

---

## Q13. (Short answer) Give an example of how binary encoding is used to represent a simple black and white image.

<details markdown="1">
<summary>Sample Answer</summary>
A 4x4 black and white image could be represented as:
1100
1010
0110
0001
where 1 = black, 0 = white.
</details>

