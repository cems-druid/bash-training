#!/bin/bash

echo "Enter an input"
read input
echo "Hi your input is: $input"
echo "####"

#We can also reduce the code by using "-p". This argument reads the input before printing it.
read -p "ANother input is needed" input2
echo "This is the other input: $input2"
echo "#####"