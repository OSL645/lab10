#!/bin/bash
# Author:
# Date:
# Purpose: To populate the array users from the file userinfo.csv, and print a list of users, one user at a time.
# Usage: ./users2.bash
#

# Populate the array users with usernames from the file userinfo.csv
users=($(cat userinfo.csv | cut -d"," -f1))
emails=($(cat userinfo.csv | cut -d"," -f2))

# Print a heading
echo -e "Username\tEmail"

# Initialize num to 0
num=0

# For each username in the array users
for user in "${users[@]}"; do

    # Use echo to display the username and email separated by a tab
    echo -e "$user\t${emails[$num]}"

    #printf "%-9s\t%10s\n" $user ${emails[$num]}
    
    # Increment num by 1
    num=$(($num + 1))

# End for
done