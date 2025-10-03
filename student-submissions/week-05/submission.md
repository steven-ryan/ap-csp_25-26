# Week 05 Submission

# L ← [4, 7, 9, 2]
SET last ← 0
FOR EACH number IN L
    IF number > last
        SET last <-- number 

DISPLAY(last)
- 



SET sum ← 0 
SET n ← LENGTH(L) 
FOR EACH x IN L 
  SET sum ← sum + x 
END FOR EACH 
SET avg ← sum / n 
DISPLAY(avg)

# L ← [4, 7, 9, 2]
SET total <-- 0
SET average <-- 0
FOR EACH number IN L
    total <-- total + number
average <-- total/LENGTH(L)

DISPLAY(average)