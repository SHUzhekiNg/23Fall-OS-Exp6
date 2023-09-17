# echo $1, $#

read -p "Please Enter your name: " name

if [ -z "$name" ]; then
    echo "Name not provided"
else
    echo "Your name is $name"
fi
