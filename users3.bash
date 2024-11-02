#!/bin/bash
# Author:
# Date:
# Purpose: To populate the array users from a file specified by the user as a command line argument, and print a list of users, one user at a time.
# Usage: ./users3.bash <filename>
# 
# Error Codes:
#   1 - Incorrect number of command line arguments
#   2 - File does not exist

# If the number of command line arguments is not equal to 1
if [[ $# -ne 1 ]]; then

    # Use echo to display a message indicating the correct usage of the script
    echo "Usage: ./users3.bash <filename>"

    # Exit the script with an exit status of 1
    exit 1

# End if
fi

# If the file specified does not exist
if [[ ! -f $1 ]]; then

    # Use echo to display a message indicating that the file does not exist
    echo "The file $1 does not exist."

    # Exit the script with an exit status of 2
    exit 2

# End if
fi

# Populate the array users with usernames from the file specified by the user
users=($(cat $1 | cut -d"," -f1))
names=($(cat $1 | cut -d"," -f2 | sed 's/ /+/'))
emails=($(cat $1 | cut -d"," -f3))

# Print a heading
printf "%-9s\t%-20s%-10s\n" "Username" "Full Name" "Email"

# Initialize num to 0
num=0

# For each username in the array users
for user in "${users[@]}"; do

    # Use printf to display the username and email separated by a tab    
    printf "%-9s\t%-20s%-10s\n" $user ${names[$num]} ${emails[$num]} | tr '+' ' '

    # Increment num by 1
    num=$(($num + 1))

# End for
done