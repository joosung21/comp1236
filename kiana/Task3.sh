

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





