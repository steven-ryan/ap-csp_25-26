1) lines 19-41
    a) this function will take two inputs, the first is a list of numbers and the second is an integer. the list of numbers is then sorted from the highest value to the lowest value, then the integer that was input by the user is used to return the original index value of the highest numbers specified by the integer. The purpose of this segment is to return the original index values of the highest X amount of numbers from a given list where X is an input supplied by the user.



tHE PURPOSE OF TH SEGMENT IS..... TOI ALLOW A USER TO OBTAIN THE HIGHEST VALUES IN A LIST.  tHEY CAN PROVIDE A NUJBER OF HOW MANY HIGHEST VALUES THEY WOULD LIKE TO OBTAIN, FOR EXAMPLE  TOPxIDEXES(AList, 6) would return the list index of the highest 6 numbers in the list 'AList'

The code: will take two inputs, the first is a list of numbers and the second is an integer. the list of numbers is then sorted from the highest value to the lowest value, then the integer that was input by the user is used to return the original index value of the highest numbers specified by the integer.

The expected output is a list of indexes representing the highest values in the list, the size of the list returned should match the integer that the user provided as input *(except if this number is greater than the numbers list size where the full list of indexes would be returned)
 

    b) This code segment is a library and is therefore easy to implement in another program meaning it can be used in a variety of circumstances. This makes it easier for the programmer because it allows them to pass a list of numbers and an integer in order to get the index values of the highest values of the specified list by using the integer given.

The code segment is a standalone function that accepts arguments from the caller, and returns a list.  This is self contained standalone utility is intended to be used  a library
and able to contribute to the functionality of the programs that others are writing.  



2a) lines 47-69
    I) This algorithm will take two inputs, the first is a list of numbers and the second is an integer. It will then sort the list of numbers from the lowest values to the highest values and use the integer that was input by the user to return the index values of the lowest numbers specified by the integer.

    II) a different algorithm would work by iterating through a given list and only outputting a set amount of values. this would be possible by having a set number of global variables used as indexes and a set number of global variables used as the values. by doing this a program could be created that iterates through the list and compares the current value to the previously stored value and if the current value is less than or equal to the currently stored value that value would be set as the new lowest value and the index of the new value would be set as one of the index variables. The old value would then be checked against the next lowest value and if the value is less than or equal to the value currently stored in the second lowest value, this value is than changed to the old value of the previously lowest variable and the index is also changed to match that of the old lowest value. This process is repeated until all the given variables are filled. The algorithms would yield the same side effect, but this way is much more complex and would lead to much confusion. 


2b) lines 19-41
    a) One set of inputs that could be used to test this algorithm would be the list [-6, 7, 3, 77, 99, -10] and the integer 3.  Another set of inputs that could be used to test the algorithm is the list [98, 0, -4, 56, -9, 1, 3, 2, 5, 421] and the integer 5.

    b) The first combination of inputs would then return the list [4, 3, 1] because that is the order of the index values of the highest 3 numbers. The second combination would return the list [9, 0, 3, 8, 6] because that is the order of the index values of the highest 5 numbers.
This helps verify that the algorithm works correctly because the order of index values accurately maps to the highest values in order form the input list 

2c) lines 47-69
    a) This function manages complexity by dividing the task of returning the indexes of the lowest numbers into smaller tasks by first creating a new list (indexed) that contains a dictionary which associates the values of the input list and its corresponding index . This new list is then sorted by the values in the dictionaries from lowest to highest values and then the lowest values are taken from this list by the inbuilt slide function to trim the list so it only contains the number of items the user specified .  
Finally, a result list is constructed which loops through the index list and obtains the indexes which are not sorted in order, and appends these to the result list and returns this list which consists of the bottom three indexes for the lowest values in the numbers list that the user provided when calling the function.
 
These lowest values are then used to find the original indexes of the values and these indexes are added to a list called result before the list result is returned.

    b) This procedure improves the organisation of the program because all the individual steps are separated from each other so that the code is easier to read. This in turn allows the code to be more easily modified because there are no global variables, instead it is a self contain4ed function where the inputs and outputs are managed locally within the functions scope.  The absence of  external dependencies makes it easy to modify, maintain and debug.