#!/bin/bash

#promt the user to enter thier age 

echo "Please enter your age:"
read age


#exit with status 1 if age is not provided
if [ -z "$age" ]; then
    echo "Age not provided"
    exit 1
fi

echo "please inter your country:"
read country


#check with status 2 if country is not provide 
if [ -z $country ]; then
   echo "Country not provided"
   exit 2
fi


#check if age is greater than or equal to 18 it the country set to india
if [ $age -ge 18 ] || [ $country == india ]; then
   echo "You are Eligible, You can vote"
else
   echo "You are not Eligible, You can't vote"
fi
