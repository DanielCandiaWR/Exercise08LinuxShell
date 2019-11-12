#!/bin/bash 
# Given three integers (X, Y, and Z) representing the three sides of a triangle, 
# identify whether the triangle is Scalene, Isosceles, or Equilateral.
echo "Input first side: "
read sideOne
echo "Input second side: "
read sideTwo
echo "Input third side: "
read sideThree
sumA="$(($sideOne+$sideTwo))"
sumB="$(($sideTwo+$sideThree))"
sumC="$(($sideThree+$sideOne))"
if [ "$sumA" -le "$sideThree" ] || [ "$sumB" -le "$sideOne" ] || [ "$sumC" -le "$sideTwo" ]; then
    echo "It's not a Triangle"
else
    if [ "$sideOne" -eq "$sideTwo" ] && [ "$sideTwo" -eq "$sideThree" ]; then
        echo "EQUILATERAL"
    elif [ "$sideOne" -eq "$sideTwo" ] || [ "$sideTwo" -eq "$sideThree" ] || [ "$sideThree" -eq "$sideOne" ]; then
        echo "ISOSCELES"
    else
        echo "SCALENE"
    fi
fi

