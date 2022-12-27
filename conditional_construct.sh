echo "Write if statement example in bash script"
read -p "Enter a number: " num
if [ $num -gt 10 ]
then
    echo "The number is greater than 10"
else
    echo "The number is less than or equal to 10"
fi
echo

echo "Write switch case example in bash script"
echo -n "Please enter number 1 or 2: "
read number
case $number in
    1) echo "You entered 1";;
    2) echo "You entered 2";;
    *) echo "Invalid input";;
esac

echo "Write select construct example in bash script"
echo "What is your favorite color?"
select color in Red Green Blue
do
    case $color in
        Red|Green|Blue) echo "You have selected $color";;
        *) echo "Invalid selection"
    esac
done