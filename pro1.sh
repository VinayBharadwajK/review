#!/bin/bash -x
declare -A result
function readvalue()
{
	echo "Enter value of a"
	read a
	echo "Enter value of b"
	read b
	echo "Enter value of c"
	read c
}

readvalue

result[k1]=$((a+b*c))
result[k2]=$((a*b+c))
result[k3]=$((c+a/b))
result[k4]=$((a%b+c))

echo "value in dict"
echo "${result[@]}"
echo ""
a=0
for i in ${!result[@]}
do
	arr[$a]="${result[$i]}"
	((a++))
done

echo "value in array"
echo ${arr[@]}
echo ""

echo "Assending order"
sorted=($(printf '%s\n' "${arr[@]}"|sort -n))
echo ${sorted[@]}
echo ""

echo "Decending order"
rsorted=($(printf '%s\n' "${arr[@]}"|sort -nr))
echo ${rsorted[@]}
