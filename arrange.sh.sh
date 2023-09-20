#!/bin/bash

file_location="/home/workspace/SWE_2021_41_2023_2_week_4-main/SWE_2021_41_2023_2_week_4-main/files"

for i in "$file_location"/*; do
    if [ -f "$i" ]; then
        first_letter=$(basename "$i" | cut -c1)
        first_letter_lower=$(echo "$first_letter" | tr '[:upper:]' '[:lower:]')

        if echo "$first_letter_lower" | grep -q '^[a-z]$'; then
            mv "$i" "/home/workspace/SWE_2021_41_2023_2_week_4-main/SWE_2021_41_2023_2_week_4-main/$first_letter_lower"
        fi
    fi
done
