#!/bin/bash

#Question 1

#a #3325
awk 'END{print NR}' aliceinwonderland.txt 

#b #393 rows
awk '/Alice/ {print $0}' aliceinwonderland.txt | awk END'{print NR}'
#option 2 --> awk -F"\t" '/Alice/ {print $0}' aliceinwonderland.txt | awk 'END{print NR}'
#option 3 --> awk '/Alice/ {print}' aliceinwonderland.txt | awk 'END{print NR}'

#c #212 times
cat aliceinwonderland.txt | tr ' ' '\n' | awk '/^Alice$/' | awk END'{print NR}'

#d #395 times
cat aliceinwonderland.txt | tr ' ' '\n'  | awk '/Alice/' | awk END'{print NR}'

#e #1 word (about.)
awk ' !/^[[:space:]]*$/ {print NF, $0}' aliceinwonderland.txt | sort -n | head -n 1

#f - the, to , and , a , of
cat aliceinwonderland.txt | tr ' ' '\n' | awk '!/^[[:space:]]*$/ {a[$1]++}END{for (k in a)print a[k],k}' | sort -n -r | head -n 5

#g #0
awk '/[[:digit:]]/ {print $0}' aliceinwonderland.txt | awk '/Alice/' | awk END'{print NR}'
