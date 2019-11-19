#!/usr/bin/env bash
#File: guessinggame.sh

#gets the number of files in the folder
lines=$(ls -1 | wc -l)

echo "Please, try to guess how many files are in this directoty:"
read input

#checks if the number is -lt or -gt and asks for new inputs
function check_number {
	if [ $input -lt $lines ]
	then
		echo "Too low, try a bigger number:"
		read input
	elif [ $input -gt $lines ]
	then
		echo "Too high, try a lower number:"
		read input
	fi
}

#loops until input is correct
while [ $input -ne $lines ]
do
	check_number
done

echo "CONGRATS, you found the correct number of files!"
