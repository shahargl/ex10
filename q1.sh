#!/bin/bash

echo "a. Number of lines in the text:"
awk '{count ++} END {print count}' aliceinwonderland.txt

echo "b.number of lines containing the word Alice:"
awk '/Alice/ {count++} END {print count}' aliceinwonderland.txt

echo "c. number of times the word Alice apears in the book with a space before and after:"
awk '/Alice/ {print}' aliceinwonderland.txt | grep -o " Alice " | wc -l

echo "d.number of times the word alice apears in the book in total:"
awk -v OFS="\n" '{$1=$1}1' aliceinwonderland.txt | grep  "Alice" | wc -l

echo "e. the shortest line in the book is:"
awk '{print length, $0 | "$1 sort -n"}' aliceinwonderland.txt | awk '!/1/ {$1=""; print $0}' | awk 'NR==1{print $1}'

echo "f. the five most popular words in the book:"
awk '{gsub(/[[:punct:]]/, "")} 1' RS='[[:space:]]' aliceinwonderland.txt |awk '{for(i=1;i<=NF;i++) a[$i]++} END {for(k in a) print k,a[k]}' | sort -k 2 -n -r | head -n 5

echo "g. the number of lines that have the word "Alice" and a number:"
awk '/Alice/ &&  /[0-9]/ {print}' aliceinwonderland.txt | awk 'END{print NR}'
