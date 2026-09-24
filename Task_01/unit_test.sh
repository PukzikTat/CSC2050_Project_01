#!/bin/bash

#Test if there are three input
if [ $# -ne 3 ]; then
   echo "There isn't three input"
   exit 1
fi

#Set up the file location
file=$1

#Checks that the arugment identifies a regular file
if [ ! -f "$file" ]; then
   echo "This is not a regular file"
   exit 1
fi

#Test if they start with ./
if [[ "$file" != ./* ]]; then
   echo "the file doesn't start with ./"
   exit 1
fi

#Identify the input, expected, output
input=$2
expected=$3
output=$("$file" "$input")

#Test if it match output
if [ "$output" -eq "$expected" ]; then
   echo "PASS"
   exit 1
else
   echo "FAIL"	
   echo "Expected: $expected"
   echo "Got: $output"
   exit 1
fi
