#Author Shakil Ahamed Riaz(221-35-995)
#!/bin/bash
echo "Enter the number of elements: "
read n

# Declare an array
declare -a a

sum=0
count=0

for (( i=0; i<$n; i++ )); do
    echo "Enter element $((i + 1)): "
    read num
    a[i]=$num
    sum=$((sum + a[i]))
    count=$((count + 1))
done

average=$((sum / count))

echo "Average is: $average"



