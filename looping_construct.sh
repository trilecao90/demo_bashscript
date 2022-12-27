echo "for loop example 1"
for i in {1..3}
do
    echo $i
done

echo "for loop example 2"
for ((i=1;i<=3;i++))
do
    echo $i
done

echo "until loop example"
n=1
until [ $n -gt 3 ]
do
    echo $n
    ((n++))
done

echo "while loop example"
c=1
while [ $c -le 3 ]
do
    echo $c
    c=$((c+1))
done