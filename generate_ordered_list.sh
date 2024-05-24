#!/bin/bash

directory="chapters"
output_file="chapter_list.txt"

echo "- $directory/Career and Community.qmd" > $output_file

find "$directory" -name "*.qmd" ! -name "Career and Community.qmd" ! -name "Other Compendiums.qmd" |
while read file; do
    echo "- $file" >> $output_file
done
echo "- $directory/Other Compendiums.qmd" >> $output_file
