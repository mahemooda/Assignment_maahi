#!/bin/bash -x
isfulltime=1
isparttime=0
empwageperhr=20
totalworkingDays=20
ispresent=1
isabsent=0

empworkhrs=8
empCheck=$(( RANDOM % 3 ))
case $empCheck in
     isfilltime)   for (( day=1; day<=$totalworkingDays; day++))
                       do
                       presentemp=$(( RANDOM % 2 ))
                        if [ $presentemp-eq$ispresent ]
                          then
                            emptotalhrs=8
                           else
                             emptotalhrs=0
                         fi
                      empworkhrs=$(( $emptotalhrs + $empworkhrs )) 
                   done
;;
      
isparttime)   for (( day=1; day<=$totalworkingDays; day++))
                       do
                       presentemp=$(( RANDOM % 2 ))
                        if [ $presentemp-eq$ispresent ]
                          then
                            emptotalhrs=4
                           else
                             emptotalhrs=0
                         fi
                      empworkhrs=$(( $emptotalhrs + $empworkhrs ))
                    done
;;

*)             emptotalhrs=0
esac

salary=$(( $empwageperhr * $empworkhrs ))
echo  " salary for a month " $salary
