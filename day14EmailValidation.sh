#!/bin/bash -x
echo "enter valid email"
read email
#pattern="^([a-zA-Z]{6}([._][0-9a-zA-Z]+)*[@]{1}[a-zA-Z0-9]{1,}[.]{1}[A-Za-z]{2,4}([.][a-zA-Z]{2})([.][a-zA-Z]{2}))"
pattern="^[A-Za-z0-9]{1,}([._+-][0-9a-zA-Z]+)*[@]{1}[a-zA-Z0-9]{1,}\.[A-Za-z]{2,4}([.][a-zA-Z]{2,3})$"
if [[ $email =~ $pattern ]]
then
     echo "enter email is valid"
else
     echo "enter email is invalid"
fi
