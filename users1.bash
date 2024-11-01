#!/bin/bash
# Author:
# Date:
# Purpose: To print a list of users (from an array) one user at a time.
# Usage: ./users1.bash
#

# Populate the array users with usernames
users=("tstark" "bbanner" "thor" "srogers" "nromanoff")

# For each username in the array users
for user in "${users[@]}"; do

    # Use echo to display the username
    echo $user

# End for
done