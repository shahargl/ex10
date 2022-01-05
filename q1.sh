#!/bin/bash

echo "A. num of lines in book:"
#sed -E -n '/.*/p' aliceinwonderland.txt | wc -l
awk {print} aliceinwonderland.txt | wc -l

echo "B. num of rows which contain Alice:"
awk '/Alice/ {print}' aliceinwonderland.txt | wc -l

echo "C. num of occurences which contain spaces before and after Alice:"
awk '/ Alice / {print}' aliceinwonderland.txt | wc -l


echo "D. num occurences of Alice in the book including words bfore and/or after:"
grep -o -E 'ALICE|Alice' aliceinwonderland.txt | awk '{a[$1]++}END{for(k in a)sum+=a[k];}END {print sum}'


echo "E. shortest row:"
echo "***Assuming the shortest row is the shortest line among the non-empty rows***"
#***Initialized min variable inside the awk command to starrt with 100, assuming there are shorter rows in the book***
sed -r '/^\s*$/d' aliceinwonderland.txt | awk ' BEGIN {min = 100} { if (length($0) < min) { line=$0; min = length($0); } } END {print line}' 

echo "F. 5 most frequent words:"
sed -E 's/(.*)/\L\1/g' aliceinwonderland.txt|grep -oE '[[:alpha:]]+' | awk '{a[$1]++}END{for(k in a)print a[k], k}' | sort -nr | head -5

echo "G. num of Alice occurences in lines which also contain a number:"
awk '/.*(Alice.*[0-9]+|[0-9]+.*Alice).*/' aliceinwonderland.txt | wc -l
