#!/bin/bash -x
echo "enter valid name"
read name

pattern="^[A-Z]{1}[a-z]{2}"
if [[ $name =~ $pattern ]]
then 
    echo "given name is valid"
else
    echo "given name is invalid"
fi