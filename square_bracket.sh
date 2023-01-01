# condition evaluation
test 3 -eq 3 && echo "Numbers are equal"
[ 3 -eq 3 ] && echo "Numbers are equal"
[[ 3 == 3 ]] && echo "Numbers are equal"

echo

[ 3 -eq 3 -a 4 -eq 4 ] && echo "Numbers are equal"
[[ 3 == 3 && 4 == 4 ]] && echo "Numbers are equal"

echo

[ 3 -eq 3 -a \( 4 -eq 4 -o 5 -eq 5 \) ] && echo "Numbers are equal"
[[ 3 == 3 && ( 4 == 4 || 5 == 5 ) ]] && echo "Numbers are equal"