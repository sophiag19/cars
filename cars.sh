#! /bin/bash
# cars.sh
# Sophia Guarnotta
NUM="0"
while [ "$NUM" -ne "3" ]
do
echo "Type 1 to enter a car"
echo "Type 2 to view the cars in your inventory"
echo "Type 3 to quit the program"
read -r NUM
case "$NUM" in 
"1")echo "What year was the car made?"
read -r YEAR
echo "What make is the car?"
read -r MAKE
echo "What is the model of the car?"
read -r MODEL
NEW_CAR="$YEAR:$MAKE:$MODEL"
echo "$NEW_CAR" >> My_old_cars;;
"2")sort My_old_cars;;
"3")echo "Goodbye :)";;
*)echo "Please enter 1,2 or 3 to run the program";;
esac
done
