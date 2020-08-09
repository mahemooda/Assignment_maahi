#!/bin/bash -x
echo "enter valid mobile number"
read mobilenumber
pattern="^[0-9]{2}[ ]{1}[0-9]{10}$"
if [ $mobilenumber =~ $pattern ]
then
  echo "enter mobile number is valid"
else 
    echo "enter mobile number is invalid"
fi