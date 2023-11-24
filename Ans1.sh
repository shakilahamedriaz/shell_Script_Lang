#author Shakil Ahamed Riaz (221-35-995)
#!/bin/bash
# Enter a positive integer as nth of sum
echo "Enter a positive integer limit:"
read limit

# Initialize sum to 0
sum=0

# Use a for loop to calculate the sum
for (( i=1; i<=$limit; i++ ))
do
    sum=$((sum + i))
done

# Display the result
echo "The sum of numbers from 1 to $limit is: $sum"

