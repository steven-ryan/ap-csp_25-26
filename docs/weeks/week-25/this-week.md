---
title: Week 25 — Plan
---
{% include topnav.md %}

# Week 25: This Week in AP CSP


# Thursday
## Unit 7 - Lesson 10: Project - Make a Library Part 3
- [Lesson](https://studio.code.org/courses/csp-2025/units/7/lessons/10)
- [Slides](https://docs.google.com/presentation/d/1ck4tsv7Zp3gke6npUYfqmqIqucFIKjr2dmPFhAQ9Iis/template/preview)
- [Bingo](https://studio.code.org/courses/csp-bingo-2023/units/1?section_id=6109201)
- [Print](https://docs.google.com/document/d/1EO9J47qre36SGGWm-ohnXCapV2V_8fbMYLbPZv1fI74/edit?tab=t.0) P5/6

<details markdown="1"><summary>Q1</summary>
Documentation for the Code Segment

Purpose:
* This code segment identifies the three highest and three lowest numerical values from a list and then retrieves the related data from a second list using matching index positions. It is used to analyze paired datasets where each numeric value represents a measurement, score, or ranking, and the second list contains the item associated with that value.

Inputs:
* numList — A list of numbers to be analyzed.
* dataList — A second list containing related information. Each element in this list corresponds to an element in numList at the same index.

Process (What the Code Does):
* The code examines each value in numList.
* It determines which values belong to the top three and bottom three by comparing them as it iterates through the list.
* It records the indexes where those extreme values occur.
* Using those indexes, it accesses the matching elements in dataList.
* It groups and returns both the extreme values and their associated data.

Expected Outputs:
* A collection containing:
* The three highest numbers and their corresponding items from dataList.
* The three lowest numbers and their corresponding items from dataList.
* This output allows the program to see not only which values are extreme, but also what they represent.

(b) Contribution to Overall Program Functionality

This code segment provides the core analytical feature of the program. Rather than simply storing or displaying raw data, the program can interpret the data to highlight significant results (highest and lowest values). This enables the application to summarize information for the user, such as identifying best-performing items, weakest results, or notable trends.

By encapsulating this logic into a single segment, the rest of the program can call it whenever analysis is needed, which improves efficiency and avoids duplicating code. It also ensures consistency, because all parts of the program rely on the same method to compute rankings and retrieve the associated information.
</details>


<details markdown="1"><summary>Q2a</summary>
(i) Description of the Original Algorithm and Its Intended Result

The algorithm processes two related lists:
scores → a list of numerical values
labels → a second list where each element corresponds by index to an element in scores

The goal of the algorithm is to:
* Find the three highest and three lowest values in scores.
* Record the indexes where those values occur.
* Use those indexes to retrieve the matching elements from labels.
* Return both the extreme values and their corresponding labels.

How it works (high-level):

* The algorithm loops through scores while keeping track of the current top three and bottom three values.
* When a new value is encountered, it is compared against the stored extremes.
* If it belongs in either group, the stored values are updated and reordered.
* The saved indexes are then used to access the related entries in labels.

Intended result:
* Identify the strongest and weakest items and correctly map them to their associated data in the second list.

(ii) A Different Algorithm That Performs the Same Task

An alternative approach is to sort the data first, then select the first and last three elements.

Alternative Algorithm (pseudocode):

Create a list of paired values:
paired_list = [(scores[i], labels[i]) for each index i]

Sort paired_list by the score value

bottom_three = first 3 elements of paired_list
top_three = last 3 elements of paired_list


Comparison of the Two Algorithms

Feature	Original Algorithm (Selection-Based)	New Algorithm (Sorting-Based)
Method	Finds extremes during a single scan	Sorts entire dataset first
Efficiency	Faster for large lists (O(n))	Slower due to sorting (O(n log n))
Memory Use	Stores only needed values	Stores reordered full dataset
Result	Same top/bottom matches	Same top/bottom matches

Do they yield the same result?
Yes. Both correctly identify the three highest and lowest values and return the corresponding elements from the second list. The difference is only in how they compute the result, not in the final output.
</details>




<details markdown="1"><summary>Q2b</summary>

Testing the Algorithm with Different Inputs

(a) Two Input Sets for Testing

Test Case 1 — Typical Data

scores = [88, 72, 95, 60, 83, 99, 70]
labels = ["A", "B", "C", "D", "E", "F", "G"]


Test Case 2 — Edge Case with Duplicate Values

scores = [50, 90, 90, 20, 20, 75, 65]
labels = ["H", "I", "J", "K", "L", "M", "N"]


(b) Expected Output and Verification

For Test Case 1:

* Top three scores → 99, 95, 88
* Corresponding labels → "F", "C", "A"
* Bottom three scores → 60, 70, 72
* Corresponding labels → "D", "G", "B"

This verifies the algorithm correctly:
* Orders values by magnitude
* Uses indexes to retrieve matching labels


For Test Case 2 (Duplicates):
* Top three scores → 90, 90, 75
* Labels → "I", "J", "M"
* Bottom three scores → 20, 20, 50
* Labels → "K", "L", "H"

This test ensures:
* The algorithm handles duplicate values correctly.
* It still returns the proper corresponding entries instead of mixing indexes.
* Testing both normal and edge cases confirms the algorithm is reliable across different scenarios.
</details>



<details markdown="1"><summary>Q2c</summary>
(a) Breaking Down a Larger Problem

The overall task—analyzing a dataset and matching results across two lists—could require many repeated steps if written inline.
The procedure simplifies this by encapsulating the logic into one reusable function, such as:

* findExtremes(scores, labels)


Inside this procedure, smaller subtasks are handled:
* Compare values to determine ranking.
* Track indexes of important values.
* Map indexes to the second list.
* Package and return results.

By isolating these responsibilities, the main program only needs to call the procedure instead of reimplementing the logic each time.

(b) Improvements to Organization and Maintainability
Using this procedure improves the program in several ways:
* Readability: The main program becomes easier to understand because it contains high-level function calls instead of detailed comparisons.
* Reusability: The same procedure can analyze any pair of lists without rewriting code.
* Debugging: Errors can be fixed in one place rather than searching through multiple duplicated sections.
* Extensibility: If the requirement changes (for example, finding the top five instead of three), only the procedure needs modification.

This modular design reduces redundancy and makes the program easier to maintain as it grows.
</details>

<details markdown="1"><summary>Exam paragraph style</summary>
1. 
The referenced code segment is responsible for analyzing two related lists to determine the three highest and three lowest numerical values and to return the associated elements from the second list. The inputs to this code are a list of numbers to be evaluated and a second list that contains corresponding data aligned by index. The code processes the data by pairing the two lists, determining which values are the largest and smallest, and then using the recorded index positions to retrieve the related elements. The expected output is a grouped result that includes both the extreme numerical values and the items they correspond to in the second list.

This code segment contributes to the overall functionality of the program by providing the main analytical feature. It allows the program to move beyond simply storing data and instead summarize and interpret it by identifying significant results. Other parts of the program can reuse this functionality whenever comparisons or rankings are needed, which keeps the design consistent and prevents repetition of complex logic.


2a.
The algorithm in my program is designed to find the three highest and three lowest values in a list of numbers and then use their index positions to retrieve the related items from a second list. The program first combines the two lists by pairing each number with its corresponding value from the second list. It then sorts these pairs in ascending order based on the numerical values. After sorting, the first three elements represent the lowest values and the last three elements represent the highest values. The algorithm extracts these elements and returns both the values and their associated data so the program can identify which items correspond to the extreme results.

An alternative algorithm that performs the same task does not sort the entire dataset. Instead, it iterates through the list once and keeps track of the current top three and bottom three values as it examines each element. During each iteration, the algorithm compares the current value to the stored extremes and updates the lists when a new maximum or minimum is found. This approach continuously maintains only the needed values rather than reorganizing the entire dataset. Both algorithms produce the same final result because they identify the same three highest and three lowest values and match them to the same corresponding data. However, the second algorithm is more efficient because it avoids the extra step of sorting all elements.

2b.
One set of inputs I would use to test this algorithm is a typical dataset such as numList = [88, 72, 95, 60, 83, 99, 70] with a corresponding dataList containing labels for each value. The expected behavior is that the algorithm correctly identifies 99, 95, and 88 as the top three values and 60, 70, and 72 as the bottom three values, and then returns the labels that appear at those same index positions. This verifies that the algorithm correctly sorts or compares the numbers and properly maps indexes between the two lists.

A second set of inputs would include duplicate or repeated values, such as numList = [50, 90, 90, 20, 20, 75, 65], again with a matching dataList. The expected output is that the algorithm still selects three highest and three lowest values even when some values are equal, and that it returns the correct associated items without mixing up their positions. This test helps confirm that the algorithm handles edge cases and maintains correct index relationships, ensuring it works reliably for different types of data.

2c.
The procedure that finds the top and bottom values manages complexity by breaking a larger problem into a smaller, clearly defined task. Instead of having the main program repeatedly calculate extremes and match indexes, this procedure performs all of those steps in one place. It handles comparing values, storing the correct indexes, and retrieving the related data, allowing the rest of the program to simply call the procedure when this analysis is needed. This decomposition reduces the difficulty of understanding the overall program because each part has a specific responsibility.

Using this procedure also improves organization and maintainability. Because the logic is contained in a single reusable unit, the program avoids duplicated code and becomes easier to debug or update. If the requirements change, such as finding the top five values instead of three, the modification can be made within the procedure without rewriting other parts of the program. This makes the program more modular, readable, and easier to extend.
</details>


## Unit 8 - Lesson 1: Project - Innovation Simulation Part 1
- [Lesson](https://studio.code.org/courses/csp-2025/units/8/lessons/1)
- [Slides](https://docs.google.com/presentation/d/1olqD-R8gzh0zo9rnYKltDJ6I1Yl4ZYt4MSeFuu_nGSk/template/preview)





# Friday


 
Unit 8 - Lesson 2: Data Policies and Privacy
https://studio.code.org/courses/csp-2025/units/8/lessons/2
https://docs.google.com/presentation/d/13Cl7HZ_jNBFgk0dt7TSu9Eb_vrjPEM9Wh4sATkQLMrc/template/preview

Unit 8 - Lesson 3: The Value of Privacy
https://studio.code.org/courses/csp-2025/units/8/lessons/3
https://docs.google.com/presentation/d/1vXxAIjKa31CyZQOPlvacYXc_A3ByFPhF2sisqoEqH44/template/preview


Unit 8 - Lesson 4: Project - Innovation Simulation Part 2
https://studio.code.org/courses/csp-2025/units/8/lessons/4
https://docs.google.com/presentation/d/1LxIhDHxM87w9CaXm0xESuRv3Y8dP8wde7uvqTJs4RqQ/template/preview


Unit 8 - Lesson 5: Security Risks Part 1
https://docs.google.com/presentation/d/1Vgr1SmAarwd-cJPsdTA4c9s3-Eid0x9N0KDzxnB5BnQ/template/preview


Unit 8 - Lesson 6: Security Risks Part 2
https://docs.google.com/presentation/d/1ubFpL6_Umcs8y2oViRnN4H_gqiwp2OHoYKsHbNi87XM/template/preview


Unit 8 - Lesson 7: Project - Innovation Simulation Part 3
https://studio.code.org/courses/csp-2025/units/8/lessons/7
https://docs.google.com/presentation/d/1AEGMbFuQGD5gL0IUuBVOrrxbG0Zz0qXYkgKepZr3aVw/template/preview

Unit 8 - Lesson 8: Protecting Data Part 1
https://studio.code.org/courses/csp-2025/units/8/lessons/8
https://docs.google.com/presentation/d/1FqaBsiOOejuSm82MgfiYrdABeYu8e0C2rqUzh9mZXIM/template/preview


LUnit 8 - esson 9: Protecting Data Part 2
https://studio.code.org/courses/csp-2025/units/8/lessons/9
https://docs.google.com/presentation/d/1HxfRhk-hmIX1rHsqpeMAgQhqmayV7P6FyBGMt6CBpnI/template/preview


Unit 8 - Lesson 10: Project - Innovation Simulation Part 4
https://studio.code.org/courses/csp-2025/units/8/lessons/10
https://docs.google.com/presentation/d/1rHsYWa9C7mUcVEcL2KRhO2vPOTjr6oAVls3mFl3haJM/template/preview