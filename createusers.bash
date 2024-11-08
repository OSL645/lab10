#!/bin/bash
# Author:
# Date:
# Purpose: To populate the array users from a file specified by the user as a command line argument, and print a list of users, one user at a time.
# Usage: ./createusers.bash <filename>
# 
# Error Codes:
#   1 - Script must be run as root
#   2 - Incorrect number of command line arguments
#   3 - Invalid option provided
#   4 - File does not exist

# If the user is not root, then
if [[ $(whoami) != root ]]; then

    # Print the error message "You must run this script with root privileges.."
    echo "You must run this script with root privileges."

    # Exit the script with the error code 1
    exit 1

# End if
fi

# If the number of command line arguments is less than 2
if [[ $# -ne 2 ]]; then

    # Use echo to display a message indicating the correct usage of the script
    echo "Usage: ./createusers.bash -i <filename>"

    # Exit the script with an exit status of 2
    exit 2

# End if
fi

# Use getopts to parse the options
while getopts "i:" opt; do

    # Use a case statement to check the value of opt
    case $opt in

        # If the value of opt is i, then
        i)

            # Set the variable filename to the value of OPTARG
            filename=$OPTARG
            ;;

        # Else
        \?)

            # Print the error message "Invalid option: -$OPTARG"
            echo "Invalid option: -$OPTARG"

            # Exit the script with the error code 3
            exit 3
            ;;

    # End case
    esac

# End while
done

# If the file specified does not exist
if [[ ! -f $filename ]]; then

    # Use echo to display a message indicating that the file does not exist
    echo "The file $filename does not exist."

    # Exit the script with an exit status of 4
    exit 4

# End if
fi

# Declare associative array userInfo
declare -A userInfo

# Read the file line by line and populate the associative array userInfo
while IFS=, read -r user name email; do
    userInfo["$user,name"]="$name"
    userInfo["$user,email"]="$email"
done < "$filename"

# For each user in the associative array, print the username, full name, and email
for key in "${!userInfo[@]}"; do

    # If the key contains ",name", then
    if [[ $key == *",name" ]]; then
        user=${key%,*}

        # Generate a random password
        password=$(openssl rand -base64 12)
        
        # Create the user
        useradd -c "${userInfo[$user,name]}" -m $user -p $password

        # Print the username, full name, email, and password using a here document
        cat << EOF
        Account Information:
            Username: $user
            Full Name: ${userInfo[$user,name]}
            Email: ${userInfo[$user,email]}
            Password: $password

EOF
    # End if
    fi

# End for
done

# Display a completion message indicating the accounts have been created
echo "Accounts have been created."
