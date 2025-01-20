
#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Calculate Simple Interest
    simple_interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

    echo "Simple Interest = $simple_interest"
}

# Input values
echo "Enter principal amount:"
read principal

echo "Enter rate of interest (in %):"
read rate

echo "Enter time period in years:"
read time

# Call the function to calculate simple interest
calculate_simple_interest $principal $rate $time
