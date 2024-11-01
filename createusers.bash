#!/bin/bash
# Author:
# Date:
# Purpose: To create users input from a file in Tutorial 10
# Usage: ./createusers.bash {args}
# Options:
#    -i filename
#
# Error codes:
#       1 - Script must be run as root
#       2 - No arguments provided
#       3 - User data file not found
#       4 - Invalid option provided

# Run the whoami command. Store the output in the variable user.


# If the user is not root, then


    # Print the error message "You must be root to run this script."


    # Exit the script with the error code 1


# End if


# If the number of arguments is 0, then


    # Print the error message "Usage: $0 -i filename."


    # Exit the script with the error code 2


# End if


# Use getopts to parse the options


    # Use a case statement to check the value of opt


        # If the value of opt is i, then


            # Set the variable filename to the value of OPTARG



        # Else


            # Print the error message "Invalid option: -$OPTARG"


            # Exit the script with the error code 4



    # End case


# End while

# If the file does not exist, then


    # Print the error message "File $filename not found."


    # Exit the script with the error code 3


# End if

# set the contents of the users file as command line arguments. Use sed to replace spaces with plus signs.


# For each user in the command line arguments, do


    # Genereate a password


    # Create the user using adduser


    # Set the password


    # Use a here document to print the user information


    # Print the message "User $user created."


# End for