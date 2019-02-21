#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
read -p "Enter a password guess:" myString
# TASK 2: Improve it by rewriting it to use the if command
if [ $myString = $referenceString ]
then
  echo "You guessed the password correctly!"
else
  echo "The password you guessed is incorrect"
fi


# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
for try in {1..3}
do
  read -p "Try ($try): Enter a password guess:" myString
  if [ $myString = $referenceString ]
  then
      printf "You guessed the password!\n"
      break
  else
      echo "The password eludes you..."
  fi
done


#           *** Do not use the exit command

myString="TestString"
referenceString="password"

[ $myString = $referenceString ] && echo "You guessed the password!" || echo "The password eludes you..."
