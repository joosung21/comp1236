
read -p "Enter the lower bound of the range: " LOWER
read -p "Enter the upper bound of the range: " UPPER

ODD_COUNT=0
EVEN_COUNT=0

echo "Triangular numbers in the range [$LOWER, $UPPER]:"

n=1
while true; do
    TRIANGULAR=$((n * (n + 1) / 2))
    
    if [ "$TRIANGULAR" -gt "$UPPER" ]; then
        break
    fi

    if [ "$TRIANGULAR" -ge "$LOWER" ]; then
        if [ $((TRIANGULAR % 2)) -eq 0 ]; then
            echo "The $EVEN_COUNT Number is $TRIANGULAR (Even)"
            EVEN_COUNT=$((EVEN_COUNT + 1))
        else
            echo "The $ODD_COUNT Number is $TRIANGULAR (Odd)"
            ODD_COUNT=$((ODD_COUNT + 1))
        fi
    fi

    n=$((n + 1))
done

echo "Odd triangular numbers count: $ODD_COUNT"
echo "Even triangular numbers count: $EVEN_COUNT"
