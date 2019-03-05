# replace_combinations

Task: Create a function that replaces N number of question mark in a given bit string with 1 & 0 output and results a matrix with all possible combination of such replacement. 

Example - 
for input bit string - '11?0?'
output must be - 
row1 - "1"  "1"  "0"  "0"  "0" 
row2 - "1"  "1"  "0"  "0"  "1" 
row3 - "1"  "1"  "1"  "0"  "0" 
row4 - "1"  "1"  "1"  "0"  "1"

Solution: 
The first function "create_combinations" will create a user defined 'N' number of combinations of 0 and 1

The second function "replace_question_mark" replace the question mark in user defined bit string with N number of combination of and 1 for each question mark in the bit string. 


