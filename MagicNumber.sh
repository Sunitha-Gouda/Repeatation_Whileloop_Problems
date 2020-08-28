#!/bin/bash

read -p "enter a number to check a magic number= " num
rem=0
sum=0
rev=""
temp=$num
   while [ $temp -gt  0 ]
   do
      rem=$(($temp % 10))
      sum=$((sum+rem))
      temp=$(($temp/10))
   done
   temp=$sum
   while [ $temp -gt 0 ]
   do
      rev=$((rev*10+$temp%10))
      temp=$(($temp/10))
   done
      if [[ $rev*$sum -eq $num ]]
      then
         echo  "$num is magic number "
      else
         echo " $num is not a magic number "
      fi
