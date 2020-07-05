#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
#Since I am required to run this command for each letter of my first name, rather than copy and pasting commands, I instead put it inside a loop
#for loop i meaning vairable for index 1 being starting point and 5 being endpoint. C-1 R-2 A-3 I-4 G-5 CRAIG
for i in {1..5}
do
echo "
Rolling...
$(( RANDOM % 6 + 1)) rolled
"
#done is used to signal end of loop
done
