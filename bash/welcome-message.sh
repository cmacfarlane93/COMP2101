#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
hostname=$(hostname)
#date variable created in format Day(%A), Hour(%I):Minute(%p)
userDate=$(date '+%A at %I:%M %p');
title=""

#if statement to set title variable depending upon day of the week
#each day of the week will generate a different title.
if [ $(date +%A) = "Sunday" ]; then
 title="Paladin"
elif [ $(date +%A) = "Monday" ]; then
 title="Mage"
elif [ $(date +%A) = "Tuesday" ]; then
 title="Warrior"
elif [ $(date +%A) = "Wednesday" ]; then
 title="Rogue"
elif [ $(date +%A) = "Thursday" ]; then
 title="Druid"
elif [ $(date +%A) = "Friday" ]; then
 title="Hunter"
elif [ $(date +%A) = "Saturday" ]; then
 title="Warlock"
fi 
###############
# Main        #
###############
cat <<EOF


Welcome to planet $hostname, "$title $USER!"
It is $userDate


EOF
