

while true; do
    read -p "Please enter the password: " password


    if [[ $password == "App1" ]]; then
        echo "Password correct! Access granted."
        break 
    else
        echo "Incorrect password! Please try again."       
    fi
done

while true; do
    echo "

******************************

        Menu Section

******************************

"
    echo "
Here are your choices:
1. Option 1: A-a
2. Option 2: B-b
3. Option 3: C-c
"
    read -p "Please choose one of the options: " opt

    case $opt in
        [Aa])
            echo "Welcome to Task 1"
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

         
            ;;
        [Bb])
            echo "Welcome to Task 2"
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

            
            ;;
        [Cc])
            echo "Welcome to Task 3"
            echo " This is the Formula : an^3 + bn + c " 
echo " Please enter the value for each section : " 

echo " 
***************************

        a Section

***************************
" 

read -p " Please enter the value for a : " a


echo " 
***************************

       b  Section

***************************
" 

read -p " Please enter the value for b : " b


echo " 
***************************

       c  Section 

***************************
" 

read -p " Please enter the value for c : " c

echo " 
***************************

     Range of n Section

***************************
" 

read -p " Please enter the value for min range of [n1 , n2] : " n1
read -p " Please enter the value for max range of [n1 , n2] : " n2

count=1
Term=1

while ((n1 <= count && count <= n2)); do
        Term=$((a * count * count * count + b * count + c))
        echo " The level $count of the Term is $Term "
        count=$((count + 1))       

    done 

    echo " 
***************************

     Final Section 
     
***************************
" 

last_Term=$((a * n2 * n2 * n2 + b * n2 + c))
First_Term=$((a * n1 * n1 * n1 + b * n1 + c))
echo " The first Term is $First_Term " 
echo " The last Term is $last_Term " 
product=$((First_Term * last_Term))
echo " The product of last and first terms are $product " 

          
           
            ;;
        *)
            echo "Invalid option selected! Please try again."
            continue
            ;; 
    esac

    
    echo "
***************************

       Final Options

***************************
" 

    echo "Please choose your options: 
1. Continue with another task
2. Exit
"
    read -p "Do you want to continue or exit? " answ

    case $answ in 
        1)
            echo "Welcome again to the program!"
            ;;  
        2)
            echo "Thanks! Have a nice time ! Goodbye!"
            break  
            ;;
        *)
            echo "Invalid input! Returning to the menu..."
            ;;  
    esac
done

