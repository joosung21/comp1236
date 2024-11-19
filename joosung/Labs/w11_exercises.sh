# Week 11
# Shell Scripting – Exercises
# 1. Write a script that prints “Hello World! “

# echo "Hello World!"
# echo -e "\t\tHello World\n"

# 2. Write a script that uses two variables initialized to 80 and 2 respectively and prints
# their quotient

# a=80
# b=2
# result=$[$a / $b]
# echo "The quotient of $a and $b is $result"

# 3. Write a script for a program that asks the user to enter the name and then outputs
# “Hello (name). Welcome to shell scripting.”

# read -p "Enter your name: " name
# echo "Hello $name. Welcome to shell scripting."

# 4. Write a program that allows the user to enter a value. The program adds 1 to that
# number and outputs the result.

# read -p "Enter a number: " num
# echo "Result: $(( num + 1 ))"

# 5. Modify Question 2 so that the user inputs the two numbers.

# read -p "Enter two numbers: " x y
# quotient=$(( x / y ))
# echo "quotient: $quotient"

# 6. Modify Question 3 so that the program gets two inputs from the user: the first and
# the last name. The output must contain both.

# read -p "Enter your first name: " fname
# read -p "Enter your last name: " lname
# echo "Your full name is $fname $lname"

# 7. Write a program that allows the user to enter a value. The program doubles the
# number and outputs the result.

# read -p "Enter a number: " num
# echo "Result: $(( num * 2 ))"

# 8. Write a program that uses two variables initialized to 80 and 4 and calculates their
# sum, their difference, their product, their quotient and the remainder of the division.

# a=80
# b=4

# sum=$[a + b]
# diff=$[a - b]
# product=$[a * b]
# quotient=$[a / b]
# remainder=$[a % b]

# echo "The sum of $a and $b is $sum"
# echo "The difference of $a and $b is $diff"
# echo "The product of $a and $b is $product"
# echo "The quotient of $a and $b is $quotient"
# echo "The remainder of the division of $a and $b is $remainder"

# 9. Write a program that gets two numbers from the users and calculates their sum, their
# difference, their product, their quotient and the remainder of the division.

echo "Enter two numbers to perform arithmetic operations."
read -p "First number: " x
read -p "Second number: " y

sum=$(( x + y ))
diff=$(( x - y ))
product=$(( x * y ))
quotient=$(( x / y ))
remainder=$(( x % y ))

echo "The sum of $x and $y is $sum"
echo "The difference of $x and $y is $diff"
echo "The product of $x and $y is $product"
echo "The quotient of $x and $y is $quotient"
echo "The remainder of the division of $x and $y is $remainder"

# 10. Write a program that gets the age from the user in years and prints out the
# approximate age in days

# read -p "Enter your age: " age
# echo "Approximate age in days: $(( age * 365 ))"

# 11. Modify Question 9 so that the user enters both the age in years and months and the
# program outputs an approximation of their age in days.

# read -p "Enter your age: " years
# read -p "Enter months: " months
# echo "Approximate age in days: $(( years * 365 + months * 30 ))"

# 12. Write a program that allows the user to enter a value for one edge of a cube. The
# program calculates the surface area of one side of the cube, the surface area of the
# cube, and its volume. The program outputs all the results.

# read -p "Enter the edge of a cube: " edge
# echo "Surface area of one side of the cube: $(( edge * edge ))"

# 13. Write a program that allows the user to enter two values a and b. The program outputs
# ab and ba.

# read -p "Enter two numbers: " a b
# echo "ab: $(( a * b ))"
# echo "ba: $(( b * a ))"

# 14. a. Write a program that allows the user to enter values for the width and length of a
# room’s floor in feet. The program outputs the area of the floor in square feet.
# 6-inch square tiles needed to tile the floor.

# read -p "Enter the width of the room: " width
# read -p "Enter the length of the room: " length
# echo "Area of the floor: $(( width * length ))"
# needed_tiles=$(( width * length * 2 ))
# echo "6-inch square tiles needed to tile the floor: $needed_tiles"

# 15. a. Write a program that allows the user to enter values for the width and length of a
# wall in feet. The program outputs the area of the wall in square feet.
# b. Modify the program that computes wall area to allow the user to enter the price of a
# gallon of paint. Assume that a gallon of paint covers 350 square feet of a wall. The
# program outputs the number of gallons needed and the cost of the job. (For this
# exercise, assume that you do not need to account for windows or doors, and that you
# can purchase partial gallons of paint.)
# c. Modify the program that computes paint cost to allow the user to enter the number
# of doorways that do not have to be painted. Assume each doorway is 14 square feet.
# Output the number of gallons needed and the cost of the job.

# read -p "Enter the width of the wall: " width
# read -p "Enter the length of the wall: " length
# echo "Area of the wall: $(( width * length ))"
