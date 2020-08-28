#!/bin/bash

Head=1
Valid=true
Head_Cnt=0
Tail_Cnt=0

   while [ $Valid ]
      randomCheck=$((RANDOM%2))
   do
      if [ $randomCheck -eq 1 ]
      then
         ((Head_Cnt++))
      else
         ((Tail_Cnt++))
      fi

         if [[ $Head_Cnt -eq 11 || $Tail_Cnt -eq 11  ]]
         then
            break
         fi
   done

      if [ $Head_Cnt -eq 11 ]
      then
         echo " Head flips 11 times "
      else
         echo " Tail flips 11 times "
      fi

