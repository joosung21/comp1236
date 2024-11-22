

read -p "Please enter the starting number: " num1
read -p "Please enter how many products to calculate: " num2
read -p "Please enter the second number : " num3

count=1

echo "Calculating products of two successive natural numbers starting from $num1:"
while ((count <= num2)); do
    product=$((num1 * (num1 + 1)))
    echo "Product $count: $num1 * $((num1 + 1)) = $product"
    
    num1=$((num1 + 1))
    count=$((count + 1))

    if [ $((product % num3)) -eq 0 ];then 
    echo " The $product is divisible by $num3 "

    else 
    echo "The $product is not divisible by $num3 "
    fi 
done

echo "Thanks for using the program!"




