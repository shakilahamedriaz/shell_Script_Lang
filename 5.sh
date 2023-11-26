#!/bin/bash

# Function to greet the user
greetUser() {
    echo "Hello, $1! Welcome to the script."
}

# Prompt user for their name
echo "Enter your name: "
read userName

# Call the greetUser function to print a personalized message
greetUser "$userName"
