# Author Shakil Ahamed Riaz (221-35-995)
#!/bin/bash
# Function for calculating the average of an array
calculate_average() {
    local sum=0
    local count=0

    for num in "${numbers[@]}"; do
        sum=$(echo "$sum + $num" | bc)
        count=$((count + 1))
    done

    average=$(echo "scale=$precision; $sum / $count" | bc)
    echo "Average with precision $precision: $average"
}

# Prompt the user to enter the floating-point numbers
echo "Enter the floating-point numbers separated by spaces:"
read -r input
# Replace spaces with line breaks and store in the array
numbers=($(echo "$input" | tr ' ' '\n'))

# Prompt the user to enter the precision for the average
echo "Enter the precision for the average (number of decimal places):"
read -r precision

# Call the function to calculate and display the average
calculate_average



