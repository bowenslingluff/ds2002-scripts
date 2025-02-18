#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

filename=$1

if [ ! -e "$filename" ]; then
  echo "Error: File '$filename' not found."
  exit 1
fi

filesize=$(ls -lh "$filename" | awk '{print $5}')
filetype=$(file "$filename" | awk -F: '{print $2}' | xargs)  # xargs removes extra whitespace
lastmod=$(date -r "$filename" "+%Y-%m-%d %H:%M:%S")
# add another var in this group that displays how many lines the file contains.
filelines=$(wc -l "$filename" | awk '{print $1}')

# echo out those fields:values each on its own line
echo "File size: $filesize"
echo "File type: $filetype"
echo "Last modified: $lastmod"
echo "File has $filelines lines"

exit 0
