
read -p "Please Enter the password: " password

if [[ $password == "App1" ]]; then

    echo "

*****************************

        Menu Section

*****************************

"
    while true; do
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
                break
                ;;
            [Bb])
                echo "Welcome to Task 2"
                break
                ;;
            [Cc])
                echo "Welcome to Task 3"
                break
                ;;
            *)
                echo "Please enter a correct option!"
                ;;
        esac
    done

else
    echo "Incorrect password. Access denied!"
fi
