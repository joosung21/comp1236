# This script is prints the sum or the diffrence of two numbers

# Input
read -p "1. Enter two numbers separated by a space: " val1 val2

# Processing
if [ $val1 -gt $val2 ]
then
    sum=$((val1 + val2))
    echo "The sum of $val1 and $val2 is $sum"
elif [ $val1 -eq $val2 ]
then
    echo "The two numbers are equal"
else
    diff=$((val2 - val1))
    echo "The difference of $val1 and $val2 is $diff"
fi
# when comparing numbers with [] use these relational operators:
# -gt for greater than
# -lt for less than
# -ge for greater than or equal to
# -le for less than or equal to
# -eq for equal to
# -ne for not equal to