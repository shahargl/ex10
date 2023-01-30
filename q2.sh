#!/bin/bash

#1: Count the number of lines conataining Sherlock or Holmes
sed -n '/Sherlock\|Holmes/=' sherlockholmes.txt | wc -l

#2: Count the number of times the word SHerlock or Holmes is mentioned
tr -s ' ' '\n' < sherlockholmes.txt | sed -n '/Sherlock\|Holmes/p' | wc -l

#3: Replace Sherlock with another name
sed 's/Sherlock/Yonah/g' sherlockholmes.txt

#4: Replace all proper nouns with your name
sed 's/\b[A-Z][a-z]* [A-Z][a-z]*/Yonah Kunin/g' sherlockholmes.txt

#5: Replace all parenthases with brackets
sed 's/(\(.*\))/\[\1\]/g' sherlockholmes.txt
