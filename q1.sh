#!/bin/bash

#1: print number of lines
awk 'END {print NR}' ./aliceinwonderland.txt

#2: print number of lines with Alice
awk '/Alice/ {print}' aliceinwonderland.txt | awk 'END {print NR}'

#3: print number of times / Alice / is mentioned
tr -s ' ' '\n' < aliceinwonderland.txt | awk '/^Alice$/ {print}' | awk 'END {print NR}'

#4: print length of longest line
awk '{ if (length($0) > max) max = ($0) } END {print max}' aliceinwonderland.txt

#5: print the five most common words
tr '[:upper:]' '[:lower:]' < aliceinwonderland.txt | tr -d '[:punct:]' | tr ' ' '\n' | awk '{count[$1]++} END {for (word in count) {print count[word], word | "sort -rn"}}' | grep -E '[a-z]' | head -5

