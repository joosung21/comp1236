
read -p "Enter the lower bound of the range: " LOWER
read -p "Enter the upper bound of the range: " UPPER

ODD_COUNT=0
EVEN_COUNT=0

even_product=1
odd_product=1

echo "Triangular numbers in the range [$LOWER, $UPPER]:"

n=1
while true; do
    TRIANGULAR=$((n * (n + 1) / 2))
    
    if [ "$TRIANGULAR" -gt "$UPPER" ]; then
        break
    fi

    if [ "$TRIANGULAR" -ge "$LOWER" ]; then
        if [ $((TRIANGULAR % 2)) -eq 0 ]; then
            EVEN_COUNT=$((EVEN_COUNT + 1))  
            echo "The $EVEN_COUNT Number is $TRIANGULAR (Even)"
            even_product=$((even_product * TRIANGULAR)) 
        else
            ODD_COUNT=$((ODD_COUNT + 1))  
            echo "The $ODD_COUNT Number is $TRIANGULAR (Odd)"
            odd_product=$((odd_product * TRIANGULAR)) 
        fi
    fi

    n=$((n + 1))
done

echo "Odd triangular numbers count: $ODD_COUNT"
echo "Even triangular numbers count: $EVEN_COUNT"

echo "The product of even triangular numbers is: $even_product"
echo "The product of odd triangular numbers is: $odd_product"
