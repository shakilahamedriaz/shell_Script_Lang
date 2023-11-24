# Hello World Program in Bash Shell

#!/bin/bash

# Initialize variables
sum=0
count=0

# Read floating-point numbers from the user
echo "Enter floating point numbers : "
while read -r num; do
    # Validate input
    if [[ ! $num =~ ^[0-9]+\.[0-9]+$ ]]; then
        echo "Invalid input: '$num'. Please enter a valid floating-point number."
        continue
    fi

    # Accumulate sum and count
    sum=$(echo "$sum + $num" | bc)
    count=$((count + 1))
done

# Calculate average and display the result
average=$(echo "$sum / $count" | bc -l)
echo "Average: $average"
