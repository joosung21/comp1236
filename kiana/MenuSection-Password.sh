
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
         
            ;;
        [Bb])
            echo "Welcome to Task 2"
            
            ;;
        [Cc])
            echo "Welcome to Task 3"
          
           
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







