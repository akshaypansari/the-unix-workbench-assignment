#!/bin/bash
#guessinggame.sh

echo "Please enter the number of files (not directory) in the current directory only (not in subdirectory) [can be hidden too] "
read n
# current_files=$(ls -ld *  | grep -v "^d" | wc -l)
current_files=$(ls -l | grep  "^-" | wc -l)

while [[ $n -ne  $current_files ]];
do 

	if [[ $n -gt $current_files ]];
	then
		echo "The guess is too high. You guessed $n this time"
		echo "Please enter the number of files (not directory) in the current directory only (not in subdirectory) The files can be hidden too "
		read n

	elif [[ $n -lt $current_files ]]; 
	then
		echo "The guess is too low. You guessed $n this time"
		echo "Please enter the number of files (not directory) in the current directory only (not in subdirectory) The files can be hidden too. "
		read n
	fi
done

echo "You guessed it right. The number of files are $current_files"