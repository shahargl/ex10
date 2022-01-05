#!/bin/bash
#1a.print the number of lines in the book
command1=$(awk 'END{print NR}' aliceinwonderland.txt) #= cat aliceinwonderland.txt | wc -l
echo "Number of rows in the book = ${command1}"

#1.b print the number of rows that contain the word "Alice"
command2=$(awk '/Alice/' aliceinwonderland.txt | awk 'END{print NR}') #grep -w "Alice" aliceinwonderland.txt  | wc -l
echo "Number of rows that contain the word Alice = ${command2}"

#1.c  print the number of time the word Alice appears in the book (appears with space before and after the word Alice")
command3=$(awk '/ Alice /' aliceinwonderland.txt | awk 'END{print NR}') #grep -o " Alice " aliceinwonderland.txt | wc -l
echo "Number of occurences of the word ' Alice ' with space before and after = ${command3}"

#1.d print the number of times the word Alice appears, including the times it attached to other words
#print each word in a different line:
#cat aliceinwonderland.txt | tr ' ' '\n'

command4=$(cat aliceinwonderland.txt | tr ' ' '\n'  | awk '/Alice/' | awk 'END{print NR}') #grep -o "Alice" aliceinwonderland.txt | wc -l 
echo "Number of times the word Alice appear including comming near other words = ${command4}"

#1.e print the smallest row in the book
echo "Shortest row in the book:"
awk '{print NF "-> is the number of characters in the row | The content of the row:", $0}' aliceinwonderland.txt | sort -n | head -n 1
# another option: awk 'NR==1{x=$0}length($0)<length(x){x=$0}END{print x}' aliceinwonderland.txt 

#1.f print the top 5 most common words
echo "Top 5 common words:"
for word in $(cat aliceinwonderland.txt) ; do echo $word; done | awk '! /([[:punct:]]|[[:space:]])/' | awk '{a[$1]++}END {for (k in a) print a[k], k}' | sort -n -r | head -n 5

#1.g print the number of rows containing a number and the word Alice
awk '/[[:digit:]]/' aliceinwonderland.txt | awk '/Ailce/' | wc -l
#grep -E "[[:digit:]]" aliceinwonderland.txt | grep Alice
