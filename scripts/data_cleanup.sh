#! /usr/bin/bash

#generate list of all headers:

find ../logs -name "Log*.csv" | while read -r f;
do
  head -n 1 "$f"; done > field_titles_nofilenames.csv

#get unique sets and how many
sort field_titles_nofilenames.csv | uniq > unique_header_sets.csv
sort field_titles_nofilenames.csv | uniq -c > unique_count.csv

# Make a temp file for normalised headers
> normalised_headers.txt

# Go through each line of the original
while read -r line; do
  # split into fields, sort them, rejoin into a single line
  norm=$(echo "$line" | tr ',' '\n' | sort | tr '\n' ',' | sed 's/,$//')
  echo "$norm" >> normalised_headers.txt
done < unique_header_sets.csv

# Show how many unique normalised field sets we have
sort normalised_headers.txt | uniq -c | sort -nr > sorted_normalised.csv