!/bin/bash -x

wageperhour=20
isfullday=8
isparttime=8
if [ $isfullday-lt 0 ]
  then
   daily =$(($wageperhour*$isfullday))
   echo "daily full day employee wage"$daily
else

   daily=$(($wageperhour*$isparttime))
   echo "daily part time employee wage" $daily
fi