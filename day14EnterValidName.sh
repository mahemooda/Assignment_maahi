#!/bin/bash -x
echo "enter last name"
read name
pattern="^[[:upper:]]{1}[a-z]{3,}[ ]+[[:upper:]]{1}[a-z]{3,}$"
#pattern="^[A-Za-z0-9]{1,}([._+-][0-9a-zA-Z]+)*[@]{1}[a-zA-Z0-9]{1,}\.[A-Za-z]{2,4}([.][a-zA-Z]{2,3}){0,1}$"
if [[ $name =~ $pattern ]]
then 

     echo "valid last name"
else
      echo "invalid last name"
fi