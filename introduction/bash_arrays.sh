#!/bin/bash
an_array=("first" "second" "another one")
#First item
#echo $an_array
#Indexed selection, an_array[-1] is also valid.
#echo ${an_array[2]} 
#Printing all the elements.
#echo ${an_array[@]}
#Length of the array
#echo ${#an_array[@]}

#Subslicing with bash arrays:
numbers=("1" "2" "3" "4" "5")
echo ${numbers[@]}
slice=${numbers::3}
echo ${slice}