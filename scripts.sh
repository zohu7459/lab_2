#!/bin/bash
# Authors : Zongyi Huang & Jiahao Wang
# Date: 1/31/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!


echo "Enter a regular expression"
read regex
#echo "Enter a filename"
phone='[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}'
email="@"
area="303-"
geo="@geocities.com"
filename="regex_practice.txt"
echo "File name: $filename"
echo "Regular expression: $regex"
if [[ "$regex" == "phone" ]]; then
	grep -c $phone $filename
elif [[ "$regex" == "email"  ]]; then
	grep -c $email $filename
elif [[ "$regex" == "303" ]]; then
	grep $area $filename > phone_results.txt
elif [[ "$regex" == "geocities.com" ]]; then
	grep $geo $filename > email_results.txt
elif [[ "$regex" ]]; then
	grep $regex $filename > command_results.txt
fi
