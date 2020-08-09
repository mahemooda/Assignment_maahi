#!/bin/bash -x
echo  "enter password with one numericnumber"
read numericnumber
pattern="^([a-zA-Z0-9]){9,}([@#$%&]){1}"
if [[ $numericnumber =~ $pattern ]]
then
       echo "given password is valid"
else
       echo "given password is invalid"
fi