#!/bin/bash

declare -A compute
read -p "Enter 1st number " a
read -p "Enter 2nd number " b
read -p "Enter 3rd number " c
d=$(( $a + (( $b * $c ))));
e=$(((( $a * $b )) + $c));
f=$(( $c + (( $a / $b ))));
g=$(((( $a % $b )) + $c ));
compute=( ["1st"]=$d ["2nd"]=$e ["3rd"]=$f ["4th"]=$g )
counter=0
Computation[((counter++))]=${compute["1st"]}
Computation[((counter++))]=${compute["2nd"]}
Computation[((counter++))]=${compute["3rd"]}
Computation[((counter++))]=${compute["4th"]}
for ((i = 0; i<4; i++)) 
do
      
    for((j = 0; j<4-i-1; j++)) 
    do
      
        if [ ${Computation$[j]} > ${Computation$[((j+1))]} ] 
        then
            # swap 
            temp=${Computation$[j]}
            ${Computation$[j]}=${Computation$[((j+1))]}   
            ${Computation$[((j+1))]}=$temp 
        fi
    done
done
  
echo "Array in ascending order :"
echo ${Computation[*]} 
