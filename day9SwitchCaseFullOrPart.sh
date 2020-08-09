#!/bin/bash -x

wageperhour=20
isfullday=1
isparttime=2
empCheck=$(( RANDOM % 3 ))

case  ${empCheck} in 
isfullday)
           emphrs=8
   
;;
isparttime)
             emphrs=4
   
;;
*) echo "invalid credentials"
;;
esac
    salary =$(( $wageperhour + $emphrs ))
    echo "daily full day employee wage"$salary