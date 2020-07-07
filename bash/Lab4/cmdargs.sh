#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
myargs=()
#creating variable for verbose mode. default mode is disabled.
verbose="off"
#creating variable for debug mode. default mode is disabled.
debug="off"
# loop through the command line arguments
while [ $# -gt 0 ]; do
  
  #case for -h help option
  case "$myargs" in
  	"-h")
  	#printing help to user
  	echo "To use this command, cmdargs.sh [OPTION #] input
  	      			  -h	   help mode
  	      			  -v 	   verbose mode
  	      			  -d 	   debug mode where # equals debug level"
  	#terminating script
  	exit
  	;; 
  esac
  
  #case for verbose
  #checking $1 for -v
  case "$1" in
  	"-v")
  	#setting verbose to be "on" because user issued -v
  	verbose="on"
  	#output verbose enabled
  	echo "verbose mode: "$verbose
  	#excluding -v from being processed
  	shift
  	;;
  	
  *)	#verbose option not found
  	#output verbose mode not enabled
  	echo "verbose mode: "$verbose
  	;; 
  esac
  
  #case for debug
  #checking $1 for -d
  case "$1" in
  	"-d")
  	#setting debug to be "on" because user issued -d
  	debug="on"
  	#output debug enabled
  	echo "debug mode: "$debug
  	debugLevel=$2
  	echo "debug level: "$debugLevel
  	#excluding -d and N from being processed
  	echo "Added \'$3\' to the arguments array"
  	#shifting twice to exclude both -d and N
  	shift
  	shift
  	;;
  	
  *)	#verbose option not found
  	#output verbose mode not enabled
  	echo "debug mode: "$debug
  	# tell the user how many things are left on the command line
  	echo "There are $# things left to process on the command line."
  	# tell the user what we did
  	echo "Added \'$1\' to the arguments array"
  	;; 
  	esac
  	
  #adding non-optioned input to array		
  myargs+=("$1") 
# TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
#          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
#          If the help option is recognized, print out help for the command and exit
#          If the verbose option is recognized, set a variable to indicate verbose mode is on
#          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
#             display an error if the user gave the -d option without a single digit number after it
#          Anything that wasn't recognized on the command line should still go into the myargs array

  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  # go back to the top of the loop to see if anything is left to work on
done

#printing out contents of myargs array
echo "Printing out array:"
echo ${myargs[@]}
echo "Done"

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label
  	echo "Added \'$3\' to the arguments array"
  	myargs+=("$3")
  	#shifting twice to exclude both -d and N
  	shift
  	shift
  	;;
  	
  *)	#verbose option not found
  	#output verbose mode not enabled
  	echo "debug mode: "$debug
  	# add whatever is in $1 to the myargs array
  	myargs+=("$1")
  	
  
  
  	# tell the user how many things are left on the command line
  	echo "There are $# things left to process on the command line."
  	# tell the user what we did
  	echo "Added \'$1\' to the arguments array"
  	;; 
  	esac	 
# TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
#          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
#          If the help option is recognized, print out help for the command and exit
#          If the verbose option is recognized, set a variable to indicate verbose mode is on
#          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
#             display an error if the user gave the -d option without a single digit number after it
#          Anything that wasn't recognized on the command line should still go into the myargs array

  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  # go back to the top of the loop to see if anything is left to work on
done

#printing out contents of myargs array
echo "Printing out array:"
echo ${myargs[@]}
echo "Done"

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label
