#!/bin/bash

#a
awk 'END {print NR}' aliceinwonderland.txt

#b
awk '/Alice/ {print}' aliceinwonderland.txt | wc -l
#c
awk '{print gsub(" Alice ",$0)}' aliceinwonderland.txt | awk 'BEGIN{sum=0}{sum=sum+$1}END{print sum}'
#d
cat aliceinwonderland.txt | tr ' ' '\n'  | awk '/Alice/' | awk 'END{print NR}'
#e
 awk 'length < min_length { min_length = length; short__line = $0 } END { print short__line }' aliceinwonderland.txt
#f
for word in $(cat aliceinwonderland.txt) ; do echo $word; done | awk '! /([[:punct:]]|[[:space:]])/' | awk '{a[$1]++}END {for (k in a) print a[k], k}' | sort -n -r | head -n 5
#g
cat aliceinwonderland.txt | grep  "Alice" |grep '[0-9]' | awk 'END {print NR}'
