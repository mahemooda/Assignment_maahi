#!/bin/bash -x

wageperhour=20;
maxhrsinmonth=100
maxworkingdaysinmonth=20
totalwage[0]=0;
empworkingdays=0;
totalemphrs=0;

function getWorkHrs() {
 local empcheck=$1
    case $empCheck in
    $isfulltime)
    empHrs=8
    ;;
    $is_Part_time)
    empHrs=4
    ;;
*)
    echo "Try to keep the number between one and two"
    empHrs=0;
    ;;
esac
  echo $empHrs
}

while [[ $empworkingdays -ne $maxworkingdaysinmonth || $empworkinghours -le $maxhrsinmonth
 ]]
do
echo $Days
empworkingdays=$((empworkingdays+1))
    echo "The employee is attented"
    isparttime=1;
    isfulltime=2;
    empCheck=$(( (( $RANDOM % 2 )) +1 ))
    empHrs="$ ( getWorkHrs $empCheck ) "
    totalemphrs=$(( $totalemphrs+$emphrs ))
    dailywage[$empworkingdays]=$(( $emphrs*$wageperhour ))
    totalwage[$empworkingdays]=$(( $totalwage[ $empworkingdays ]+ $dailywage[ $empworkingdays ] ))
done
