#!/bin/bash -x

echo "enter password"
read password
pattern="^[a-z(A-Z)+(0-9)+(!@$&){1}]{8,}$"
if [[ $password =~ $pattern ]]
then
     echo "password is valid"
else  
      echo "password is invalid"
fi