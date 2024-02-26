#!/bin/bash


#adding number

adding_number() {
read -p "give the first numbers :-" num1

if [ -z $num1 ]; then
echo "envalid input:-"
exit 1
fi

read -p "give the second number :- " num2
sum=$(( num1 + num2 ))


if [ -z $num2 ]; then
 echo "envalid input :-"
 exit 2

fi

echo "given numbers after adding :- $sum "
}
#substracting

division()    {
read -p "enter first no." num1
read -p "enter second no." num2

echo "given no. after division are :- $(( num1 / num2 ))"

}

#promt to user

prompt_choice() {
echo "Give a choice would you want to run"
echo "1.Adding_number"
echo "2.division"
read -p "chose your no. 1 or 2 in option :- " choice
case $choice in

1)adding_number;;
2)division;;
esac
}

prompt_choice

