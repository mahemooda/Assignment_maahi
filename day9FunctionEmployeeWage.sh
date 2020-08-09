#!/bin/bash -x
isfulltime=1
isparttime=0
empwageperhr=20
totalworkdayinmonth=1
ispresent=1
isabsent=0
empworkhr=0

 function  empworkhr()
   {
emptimecheck=$((RANDOM % 3 ))
      case $emptimecheck in
        $isfulltime)  while [ $totalworkdayinmonth -ne 20 ]
                         do
                            emppresent=$(( RANDOM % 2 ))
                             if [ $emppresent -eq $ispresent ]
                             then
                                emptotalhrs=8
                              else

                              emptotalhrs=0

                         fi
                             empworkhr=$(( $emptotalhrs+$empworkhr ))
                              (( totalworkdayinmonth++ ))
done
;;
           $isparttime)  while [ $totalworkdayinmonth -ne 20 ]
                         do
                            emppresent=$(( RANDOM % 2 ))
                             if [ $emppresent -eq $ispresent ]
                             then
                                emptotalhrs=4
                              else

                              emptotalhrs=0

                         fi
                             empworkhr=$(( $emptotalhrs+$empworkhr ))
                              (( totalworkdayinmonth++ ))
done
;;

                    *)    emptotalhrs=0
       esac
      }    
       empworkhr
         echo $empworkhr       
      salary=$(( $empwageperhr * $empworkhr ))
                   echo "salary for  month" $salary