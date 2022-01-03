#!/bin/bash 

echo "a. number of line in the book: "
awk 'END{print NR}' aliceinwonderland.txt

echo "b. number of lines contain the word Alice"
awk '/Alice/'  aliceinwonderland.txt | awk 'END{print NR}'

echo "c. number of occurrances of the word Alice"
awk '{a[$0]++} END{for (k in a) print k,a[k]}' RS='[[:space:]]+' aliceinwonderland.txt | awk '/Alice/ {print}' | awk 'NR==1 {print}'


echo "d. number of occurrances of any combination of the word Alice"
awk '{a[$0]++} END{for (k in a) print k,a[k]}' RS='[[:space:]]+' aliceinwonderland.txt | awk '/Alice/ {print}'| awk '{SUM+=$2}END{print SUM}'

echo "e. the shortest line in the text: "

cat aliceinwonderland.txt | awk '{ print length, $0 | "$1 sort -n"}' | awk '!/1/ {$1=""; print $0}' | head -1

echo "f. the 5 most common word in the text: "

awk '{a[$0]++} END{for (k in a) print k,a[k]}' RS='[[:space:]]+' aliceinwonderland.txt | sort -nk2 | tail -5


echo "g. number of lines contain Alice and a number: "

awk '/Alice/ && /[0-9]/'  aliceinwonderland.txt | awk 'END{print NR}'