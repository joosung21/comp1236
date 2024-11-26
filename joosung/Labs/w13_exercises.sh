# Week 13
# Exercises: Loops
# 1. Use a loop for displaying numbers for 1 to 10.
echo "Task 1 - Counting"
echo
for ((n=1; n<=10; n++))
do
    echo $n
done

echo; echo

# 2. Use a loop for displaying numbers from 10 to 1.
echo "Task 2 - Countdown"
echo
for i in {10..1}
do
    echo $i
done

echo; echo

# 3. Use a loop for displaying odd numbers smaller than 10
echo "Task 3 - Odd Numbers"
echo
for ((n=1; n<10; n++))
do
    if [ $((n%2)) -eq 1 ]
    then
        echo $n
    fi
done

echo; echo

# 4. Use a loop for displaying even numbers up to 10
echo "Task 4 - Even Numbers"
echo
for ((n=1; n<=10; n++))
do
    if [ $((n%2)) -eq 0 ]
    then
        echo $n
    fi
done

echo; echo

# 5. Write a program that asks the user to keep entering numbers until the number entered
# is 10 or more. The program calculates and prints the sum of the all the numbers
# entered by the user that are smaller than 10.
echo "Task 5 - Sum of Numbers"
echo "(Enter a number 10 or more to stop)"
echo
let sum=0
while true
do
    read -p "Enter a number: " num
    if [ $num -ge 10 ]
    then
        break
    fi
    let sum+=$num
done

echo "Sum: $sum"

echo; echo

# 6. Write a program that asks the user to enter 10 numbers and then finds and prints the
# sum of all positive numbers and the product of all negative numbers.
echo "Task 6 - Sum of Positive Numbers and Product of Negative Numbers"
echo
let sum=0
let product=1
for ((i=1; i<=10; i++))
do
    read -p "Enter a number($i/10): " num
    if [ $num -gt 0 ]
    then
        let sum+=$num
    elif [ $num -lt 0 ]
    then
        let product*=$num
    fi
done

echo "Sum of all positive numbers: $sum"
echo "Product of all negative numbers: $product"

echo; echo

# 7. Write a script that finds and prints all square numbers smaller than 200
echo "Task 7 - Square Numbers"
echo
for ((n=1; n<200; n++))
do
    if [ $((n**2)) -lt 200 ]
    then
        echo $((n**2))
    fi
done

echo; echo

# 8. Write a script that finds and prints the sum of all cube numbers that are bigger than 10
# but smaller than 100
echo "Task 8 - Sum of Cube Numbers"
echo
let sum=0
for ((n=1; n<100; n++))
do
    if [ $((n**3)) -gt 10 ] && [ $((n**3)) -lt 100 ]
    then
        let sum+=$((n**3))
    fi
done

echo $sum

echo; echo

# 9. Write a script that keeps asking the user about the username and only stops when the
# correct username is entered (your name). A welcome message is displayed in the end.
echo "Task 9 - Username"
echo
while true
do
    read -p "Enter your username: " username
    if [ $username == "joosung" ]
    then
        break
    fi
done

echo "Welcome, $username!"

echo; echo

# 10. Modify Question 9 so that the user is asked about the username and the password.
# Pick a username and a password of your choice. The program will continue asking
# until the right combination is entered. A welcome message is displayed in the end.
echo "Task 10 - Username and Password"
echo
while true
do
    read -p "Enter your username: " username
    read -p "Enter your password: " password
    if [ $username == "joosung" ] && [ $password == "comp1236" ]
    then
        break
    fi
done

echo "Welcome, $username!"