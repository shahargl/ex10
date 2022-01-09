#!/bin/bash
echo "1.a:"

cat aliceinwonderland.txt | awk 'END{print NR}'

echo "1.b:"

cat aliceinwonderland.txt | awk '/Alice/ {print NR}' | awk 'END{print NR}'

echo "1.c:"

awk '/[[:space:]]Alice[[:space:]]/ {print}' aliceinwonderland.txt | awk 'END{print NR}'

echo "1.d:"

awk '{a[$0]++} END{for (k in a) print k,a[k]}' RS='[[:space:]]+' aliceinwonderland.txt | awk ' /Alice/  {print}' | awk '{SUM+=$2}END {print SUM}'

echo "1.e: 
#The first shortest line (without empty lines)
cat aliceinwonderland.txt | awk  '{print length, $0 | "$1 sort -n"}' | awk '!/1/ {$1=""; print $0}' | awk 'NR==1{print $1}'

echo "1.f:"

awk '{for(i=1; i<=NF; i++) {a[tolower($i)]++}} END {for (k in a) print k,a[k]}' RS='[[:space:]]' aliceinwonderland.txt  | sort -nr -k 2 | head -n 5

echo "1.g:"

awk '/Alice/ && /[0-9]/ {print}' aliceinwonderland.txt | awk 'END{print NR}'
