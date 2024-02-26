#!/bin/bash

#prompt to user provide a month 

echo "Please Enter a Month Between 1 to 12 :"
read Month
if [ -z $month ]; then
echo "Empty Value !!! Please Provide Atleast 1 Value"
exit 1
fi

#check which season the month belongs to


if [ $Month -ge 0 ] && [ $Month -le 1 ]
then
   echo "WoW It's Winter !!!"

elif [ $Month -ge 2 ] && [ $Month -le 3 ]
then
   echo "Great Spring is Our Faviorte !!!"

elif [ $Month -ge 4 ] && [ $Month -le 6 ]
then
   echo "Now We Dive a Streamer in open ocean It's Summer !!!"

elif [ $Month -ge 7 ] && [ $Month -le 9 ]
then
     echo "Love on our way Rainy Season !!!"
elif [ $Month -ge 10 ] && [ $Month -le 12 ]
then
     echo "WoW It's Winter !!!"
fi
exit
