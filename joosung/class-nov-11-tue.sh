# Nov 11 Mon 10:00, Online Lecture

## Arithmetic Operators
echo "Arithmetic Operators"
read -p "Enter two numbers: " x y
echo "Sum: $(( x + y ))"

## Relational Operators
echo "Relational Operators"
read -p "Enter two numbers: " a b
if (( $a!=$b ))
then
    echo "a is equal to b"
else
    echo "a is not equal to b"
fi

## Order of Precedence
## 1. NOT !
## 2. AND &&
## 3. OR ||

echo
echo "Logical Operators"
echo "!(Q > 3) || R < 3 && Q - R <= 0"

Q=3
R=5

if (( !(Q > 3) || R < 3 && Q - R <= 0 ))
then
    echo "True"
else
    echo "False"
fi

## Bitwise Operators
echo
echo "Bitwise Operators"
read -p 'Enter A : ' a
read -p 'Enter B : ' b

bitwiseOR=$(( a|b ))
echo Bitwise OR of A and B is $bitwiseOR

bitwiseXOR=$(( a^b ))
echo Bitwise XOR of A and B is $bitwiseXOR

bitwiseAND=$(( a&b ))
echo Bitwise AND of A and B is $bitwiseAND

## a = 5, b = 7
## a = 101
## b = 111
## a | b = 111 = 7
## a ^ b = 010 = 2
## a & b = 101 = 5