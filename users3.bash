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

# Declare associative array userInfo
declare -A userInfo

# Read the file line by line and populate the associative array userInfo
while IFS=, read -r user name email; do
    userInfo["$user,name"]="$name"
    userInfo["$user,email"]="$email"
done < "$1"

# Print a heading
printf "%-9s\t%-20s%-10s\n" "Username" "Full Name" "Email"

# For each user in the associative array, print the username, full name, and email
for key in "${!userInfo[@]}"; do

    # If the key contains ",name", then
    if [[ $key == *",name" ]]; then
        user=${key%,*}

        # Use printf to display the username, full name, and email separated by a tab
        printf "%-9s\t%-20s%-10s\n" "$user" "${userInfo[$user,name]}" "${userInfo[$user,email]}"
      
    # End if
    fi

# End for
done