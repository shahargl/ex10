#!/bin/bash

#Question 2

#a #463
sed -n -E '/(Sherlock|Holmes)/p' sherlockholmes.txt | wc -l

#b #Number of occurences of the word Sherlock or Holmes #554
sed 's/[[:space:]]/\n/g' sherlockholmes.txt | sed -n -E '/(Sherlock|Holmes)/p' | wc -l 

#c
sed 's/Sherlock/Potter/g' sherlockholmes.txt

#e 
sed -E '/[A-Z][A-Za-z]+ [A-Z][A-Za-z]+/d' ./sherlockholmes.txt 

#f
sed -E 's/\((.+)\)/\[\1\] /g' sherlockholmes.txt
