arr=(zero one two)

echo ${arr[@]}
echo ${arr[*]}

echo ${arr[2]}

arr[3]=three
echo ${arr[@]}

unset arr[1]
echo ${arr[@]}

unset arr
echo ${arr[@]}

declare -a arr2=(1 2 3)
echo ${arr2[@]}