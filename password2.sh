#!/bin/bash
echo "Enter the password"
read password
len=`echo ${#password}`
if test $len -gt 8
then
echo $password | grep [A-Za-z][0-9] | grep "[@#$%^&*]"
echo "strong password"
else
echo "Password must contain atleast 1 uppercase, lowercase, digits and special characters"
fi