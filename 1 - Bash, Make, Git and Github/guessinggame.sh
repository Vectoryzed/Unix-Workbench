#!/usr/bin/bash

function eval_resp {
        if [[ $1 -gt $2 ]]
        then
                echo "your guess is too high"
        else
                echo "your guess is too low"
        fi
}

NUMFILES=$(ls -pa | grep -v / | wc -l | egrep -o "[0-9]+")

echo " "
echo "Guessing game:"
echo "-------- -----"
echo "guess the number of files in this directory (including hidden ones!)"

echo -n "your guess: > "
read GUESS

while [[ $GUESS -ne $NUMFILES ]]
do
	eval_resp $GUESS $NUMFILES
	echo -n "try again: > "
	read GUESS
done

echo "hey! you guessed right!"

exit 0
