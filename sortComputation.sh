#!/bin/bash -x

declare -A compute
read -p "Enter 1st number " a
read -p "Enter 2nd number " b
read -p "Enter 3rd number " c
d=$(( $a + (( $b * $c ))));
e=$(((( $a * $b )) + $c));
f=$(( $c + (( $a / $b ))));
g=$(((( $a % $b )) + $c ));
compute=( ["1st"]=$d ["2nd"]=$e ["3rd"]=$f ["4th"]=$g )
echo "${compute[@]}"
