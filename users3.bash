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


    # Use echo to display a message indicating the correct usage of the script


    # Exit the script with an exit status of 1


# End if


# If the file specified does not exist


    # Use echo to display a message indicating that the file does not exist


    # Exit the script with an exit status of 2


# End if


# Declare associative array userInfo


# Read the file line by line and populate the associative array userInfo





# Print a heading


# For each user in the associative array, print the username, full name, and email


    # If the key contains ",name", then



        # Use printf to display the username, full name, and email separated by a tab

      
    # End if


# End for
