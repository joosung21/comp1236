# This script is prints the sum of three numbers and checks if the sum is over 2000

# Input
read -p "Enter the first number: " M
read -p "Enter the second number: " R
read -p "Enter the third number: " T

# Processing
A=$((M + R + T))

if [ $A -gt 2000 ]
then
    echo "A is over 2000."
else
    echo "A is 2000 or less."
fi

