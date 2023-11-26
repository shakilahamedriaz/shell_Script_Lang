#!/bin/bash

# Prompt user for input
echo "Enter the limit: "
read limit

# Initialize sum
sum=0

# Calculate the sum using a for loop
for ((i=1; i<=limit; i++)); do
    ((sum += i))
done

# Display the result
echo "The sum of numbers from 1 to $limit is: $sum"
