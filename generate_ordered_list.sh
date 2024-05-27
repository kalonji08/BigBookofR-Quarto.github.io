#!/bin/bash

directory="chapters"
output_file="chapter_list.txt"

# Store the first file
echo "- $directory/Career and Community.qmd" > $output_file

# Find all .qmd files except for the first and last, sort them alphabetically, and append to the output file
find "$directory" -name "*.qmd" ! -name "Career and Community.qmd" ! -name "Other Compendiums.qmd" |
sort |
while read file; do
    echo "- $file" >> $output_file
done

# Append the last file
echo "- $directory/Other Compendiums.qmd" >> $output_file
