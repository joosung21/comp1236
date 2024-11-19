# This script is prints a message based on the user's favourite colour

# Input
read -p "Enter your favourite colour: " colour

# Processing (case statement)

case $colour in
blue|Blue) echo "The sky is blue.";;
yellow|Yellow) echo "The sun is yellow.";;
red|Red) echo "Roses are red.";;
orange|Orange) echo "Oranges are orange.";;
*) echo "Invalid colour.";;
esac


