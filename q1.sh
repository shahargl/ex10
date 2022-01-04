#!/bin/bash

#A
echo "#Question A"
awk '{print}' aliceinwonderland.txt | wc -l

#B
echo "#Question B"
awk '/Alice/ {print}' aliceinwonderland.txt | wc -l

#C
echo "#Question C"
awk -v str=" Alice " '{ c += gsub(str, str) } END { print c }' aliceinwonderland.txt

#D
echo "#Question D"
awk -v str="Alice" '{ c += gsub(str, str) } END { print c }' aliceinwonderland.txt

#E
echo "#Question E"
awk 'length != 1 {print NR, length, $0}' aliceinwonderland.txt | sort -n --reverse -k 2 | tail -n 1

#F
echo "#Question F"
tr -cs '[:alnum:]' '\n' <aliceinwonderland.txt | awk '{a[$1]++}END{for(k in a)print a[k],k}' | sort -n | tail -n 5

#G
echo "#Question G"
awk '/[[:digit:]]/' aliceinwonderland.txt | awk '/Ailce/' | wc -l

