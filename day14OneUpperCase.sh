#!/bin/bash -x

echo "enter name with one uppercase"
read uppercase
pattern="^([a-zA-Z]){8,}$"
if [[ $uppercase =~ $pattern ]]
then
    echo "enter name is valid"
else 
     echo "enter name is invalid"
fi
