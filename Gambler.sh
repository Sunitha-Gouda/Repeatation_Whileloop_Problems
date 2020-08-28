#!/bin/bash

NUMBER=100;
valid=true;
BET_COUNT=0;
WIN_COUNT=0;

while [ $valid ]
do
   var=$((RANDOM%2))
   BET_COUNT=$(($BET_COUNT+1))
   if [ $var -eq 1 ]
   then
      NUMBER=$(( $NUMBER+1 ))
      WIN_COUNT=$(( $WIN_COUNT+1 ))
   else
      NUMBER=$(( $NUMBER-1 ))
   fi
   if [[ $NUMBER -eq 200 || $NUMBER -eq 0 ]]
   then
         break
   fi
done
echo " Number   : " $NUMBER
echo " Betcount : " $BET_COUNT
echo " Wincount : " $WIN_COUNT


