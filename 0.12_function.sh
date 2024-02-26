#!/bin/bash

greet() {

read -p "enter your name :- " num

echo "hello $num !! nice to meet you"
}

digi_clock() {

red=$'\033[0;31m'

while true
do
clear
echo "$red $(date +%T)"
sleep 1s
done
}

check_even_odd()  {

read -p "Print a number :-" num

if (( $num % 2 == 0 )); then
    echo "given no. $num  is even"
else
    echo "given no. $num is odd"
fi
}

adding_no()  {

read -p "enter a first number you want to add :-  " num1
read -p "enter a second number you want to add :-  " num2
sum=$((num1 + num2))
echo "given no. sum of $num1 and $num2 are :-  $sum"
}

substracting_no() {
read -p "Enter first number would you want to substract :- " num1
read -p "Enter second number would you want to substract :- " num2
substract=$((num1 - num2))
echo "Given No. after substracting $num1 and $num2 are:-  $substract"
}

prompt_choice()  {

echo "what would you choose in this choice"
echo "1. Greet Me"
echo "2. check the number even or odd"
echo "3. adding a number"
echo "4. Substracting_no"
echo "5. digi_clock"
read -p "enter your choice 1, 2, 3, 4 or 5 :- " choice

case $choice in

1)greet;;
2)check_even_odd;;
3)adding_no;;
4)substracting_no;;
5)digi_clock;;
*)echo "invalid option please enter 1, 2, 3 4, or 5"

esac
}


prompt_choice
