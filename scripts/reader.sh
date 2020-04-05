#!/bin/bash
# Purpose: Read Comma Separated CSV File
# Author: Francisco Maria Calisto
# ------------------------------------------
cd dataset
INPUT=main_sheet_nasatlx.csv
OLDIFS=$IFS
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 100; }
while read name group physicians_number
do
	echo "Name : $name"
	echo "Group : $group"
	echo "Physicians Number : $physicians_number"
done < $INPUT
IFS=$OLDIFS
