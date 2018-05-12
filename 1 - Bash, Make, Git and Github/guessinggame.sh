#!/usr/bin/bash

function response_eval {
        if [[ $1 -gt $2 ]]
        then
                echo "Your guess is too high"
        else
                echo "Your guess is too low"
        fi
}

NUM_FILES=$(ls -pa | grep -v / | wc -l | egrep -o "[0-9]+")

echo " "
echo "Guessing game:"
echo "-------- -----"
echo "Can you guess the number of files in this directory? Try, and just remember to include hidden ones!"

echo -n "Your guess is: > "
read GUESS

while [[ $GUESS -ne $NUM_FILES ]]
do
	response_eval $GUESS $NUM_FILES
	echo -n "Wrong guess! Try again: > "
	read GUESS
done

echo "Congratulation! Your guess is right"

exit 0
