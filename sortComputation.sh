#!/bin/bash -x

read -p "Enter 1st number " a
read -p "Enter 2nd number " b
read -p "Enter 3rd number " c
echo d=$(((( $a * $b )) + $c));
