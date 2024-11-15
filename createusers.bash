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


    # Print the error message "You must run this script with root privileges.."


    # Exit the script with the error code 1


# End if


# If the number of command line arguments is less than 2


    # Use echo to display a message indicating the correct usage of the script


    # Exit the script with an exit status of 2


# End if


# Use getopts to parse the options


    # Use a case statement to check the value of opt


        # If the value of opt is i, then


            # Set the variable filename to the value of OPTARG



        # Else


            # Print the error message "Invalid option: -$OPTARG"


            # Exit the script with the error code 3



    # End case


# End while


# If the file specified does not exist


    # Use echo to display a message indicating that the file does not exist


    # Exit the script with an exit status of 4


# End if


# Declare associative array userInfo


# Read the file line by line and populate the associative array userInfo





# For each user in the associative array, generate a random password, add the user and print the user's information on the screen


    # If the key contains ",name", then



        # Generate a random password

        
        # Create the user


        # Print the username, full name, email, and password using a here document








    # End if


# End for


# Display a completion message indicating the accounts have been created

