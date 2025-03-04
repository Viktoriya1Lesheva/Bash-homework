#!/bin/bash

read -p "Enter meat temperature: " temp

if [ $temp -ge 120 ] && [ $temp -le 130 ]
then
	echo "Rare"
elif [ $temp -ge 131 ] && [ $temp -le 140 ]
then
	echo "Medium Rare"
elif [ $temp -ge 141 ] && [ $temp -le 150 ]
then
	echo "Medium"
elif [ $temp -ge 151 ] && [ $temp -le 160 ]
then
	echo "Medium Well"
elif [ $temp -ge 161 ] && [ $temp -le 170 ]
then
	echo "Well Done"
else
	echo "Choose correct temperature"
fi
