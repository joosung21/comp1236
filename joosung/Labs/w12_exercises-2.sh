# This script is prints the product or the remainder of two numbers
read -p "2. Enter two numbers separated by a space: " val1 val2

rem=$((val1 % 2))

if [ $rem -eq 0 ]
then
    product=$((val1 * val2))
    echo "The product of $val1 and $val2 is $product"
else
    remainder=$((val1 % val2))
    echo "The remainder of $val1 and $val2 is $remainder"
fi
