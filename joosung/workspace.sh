# Check Password
password="App1"

until [ "$password_input" == "$password" ]
do
    read -p "Enter password: " password_input
    if [ "$password_input" != "$password" ]
    then
        echo "Incorrect password. Please try again."
    fi
done

echo
echo "*******************************"
echo "      Group 27 Application     "
echo "*******************************"

# Display the menu
displayMenu() {
    echo
    echo "Please select a task to perform:"
    echo "A) Triangular Numbers"
    echo "B) Successive Products"
    echo "C) Sequence Calculation"
    echo -n "Enter your choice: "
}

# Ask to continue
continuePrompt() {
    echo
    read -p "Would you like to perform another task? (y/n): " continue_choice
    if ((continue_choice != "y" && continue_choice != "Y"))
    then
        echo
        echo "Bye!"
        echo
        exit
    fi
}

# Task 1: Triangular Numbers
task1() {
    echo
    echo "*******************************"
    echo "       Triangular Numbers      "
    echo "*******************************"
    echo "Please enter the range of numbers to check for triangular numbers."
    read -p "Range start: " start
    read -p "Range end: " end

    odd_product=1
    even_product=1
    odd_count=0
    even_count=0

    echo
    echo "Triangular numbers:"

    n=1
    while true 
    do
        tri_num=$((n * (n + 1) / 2))
        if ((tri_num > end))
        then
            break
        elif ((tri_num >= start))
        then
            if ((tri_num % 2 == 0))
            then
                echo "$tri_num"
                even_count=$((even_count + 1))
                even_product=$((even_product * tri_num))
            else
                echo "$tri_num"
                odd_count=$((odd_count + 1))
                odd_product=$((odd_product * tri_num))
            fi
        fi
        n=$((n + 1))
    done

    echo
    echo "Odd count: $odd_count"
    echo "Even count: $even_count"
    echo "Product of odd: $odd_product"
    echo "Product of even: $even_product"

    continuePrompt
}

# Task 2: Successive Products
task2() {
    echo
    echo "*******************************"
    echo "       Successive Products     "
    echo "*******************************"
    echo "Please enter the starting number, the number of terms, and the number for factor checking."
    read -p "Starting number: " start
    read -p "How many numbers want to print: " count
    read -p "Number for factor checking: " x

    echo
    echo "Product of two natural numbers in succession (factor check):"

    for ((i=0; i<count; i++)); do
        product=$((start * (start + 1)))
        if ((x % product == 0))
        then
            echo $product "(True)"
        else
            echo $product "(False)"
        fi
        start=$((start + 1))
    done

    continuePrompt
}

# Task 3: Sequence Calculation
task3() {
    echo
    echo "*******************************"
    echo "       Sequence Calculation      "
    echo "*******************************"
    echo "Term = an^3 + bn + c"
    echo "Please enter the values for a, b, c, and the range [n1, n2]."
    read -p "a: " a
    read -p "b: " b
    read -p "c: " c
    read -p "Start of range (n1): " n1
    read -p "End of range (n2): " n2

    first_term=0
    last_term=0

    echo
    echo "Terms of the sequence:"
    for ((n=n1; n<=n2; n++))
    do
        term=$((a * n**3 + b * n + c))
        echo $term
        if ((n == n1))
        then
            first_term=$term
        fi
        last_term=$term
    done

    echo

    product=$((first_term * last_term))
    echo "Product of first and last term: $product"
    if ((product % 4 == 0))
    then
        echo "The product is a multiple of 4."
    else
        echo "The product is not a multiple of 4."
    fi

    continuePrompt
}


while true
do
    displayMenu
    read choice

    case $choice in
        A|a)
            task1
            ;;
        B|b)
            task2
            ;;
        C|c)
            task3
            ;;
        *)
            echo "Invalid choice! Please try again."
            ;;
    esac
done


