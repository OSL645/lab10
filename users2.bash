#!/bin/bash
# Author:
# Date:
# Purpose: To populate the array users from the file userinfo.csv, and print a list of users, one user at a time.
# Usage: ./users2.bash
#

# Populate the array users with usernames from the file userinfo.csv
users=($(cat userinfo.csv | cut -d"," -f1))


# Print a heading
echo "Username"

# For each username in the array users
for user in "${users[@]}"; do

    # Use echo to display the username and email separated by a tab
    echo -e "$user"
    
# End for
done