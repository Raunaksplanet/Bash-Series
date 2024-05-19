#!/bin/bash

# Initialize index
index=1

# Print header for the indexed data
echo "| Index | Username          | Profile Link            |"
echo "|-------|-------------------|-------------------------|"

# Read the data file line by line
while IFS= read -r line; do
    # Extract username and profile link from each line
    username=$(echo "$line" | cut -d '|' -f 2 | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
    profile_link=$(echo "$line" | cut -d '|' -f 3 | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')

    # Print the indexed data
    printf "| %-5s | %-17s | %-23s |\n" "$index" "$username" "$profile_link"

    # Increment index
    ((index++))
done < 1.txt
