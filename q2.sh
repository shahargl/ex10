#!/bin/bash
#if you want to download the data:
#wget https://raw.githubusercontent.com/rickygv99/gutenberg/master/data/original/sherlockholmes.txt

#2.a print the number of lines that has the word Sherlock or Holmes
command1=$(sed -n -E '/(Sherlock|Holmes)/p' sherlockholmes.txt | wc -l)
echo "Number of lines that has the word Sherlock / Holmes = ${command1}" #grep "Sherlock\|Holmes" sherlockholmes.txt  | wc -l
#another option with sed - without using regexp - sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt | wc -l

#2.b print the number of occurences of the words Sherlock + the number of occurences of the word Holmes
command2=$( sed 's/[[:space:]]/\n/g' sherlockholmes.txt | sed -n -E '/(Sherlock|Holmes)/p' | wc -l)
#grep -o "Sherlock\|Holmes" sherlockholmes.txt |wc -l
echo "Number of occurences of the words Sherlock + Holmes = ${command2}"

#2.c write command that substitute the name Sherlock with other name - your choice
#sed 's/Sherlock/Noa Kirel/g' sherlockholmes.txt
#option for silence mode: only print the command of question 2.c
if [[ ( "$#" -gt 0 &&  $1 = "s"  ) ]]; then
	echo "command 3: sed 's/Sherlock/Noa Kirel/g' sherlockholmes.txt"
elif [ "$#" -eq 0 ]; then
	sed 's/Sherlock/Noa Kirel/g' sherlockholmes.txt
fi

#2.d print the 5 most common words that appear after the word Sherlock
cat sherlockholmes.txt | sed -n 's/.*Sherlock //p' | cut -d " " -f 1 | tr -d "[[:punct:]]" | tr -d "’" | sort | uniq -c
#### better with grep!!:
echo "-----------------------"
grep -oP "Sherlock\s+\K\w+" sherlockholmes.txt |sort | uniq -c | sort -n | tail -n 5

#2.e write command that deletes the rows with full name of a person or place
#*full name = two words that starts with a capital letter and the length of each of those words is 2 or more.

#make a backup:
cat sherlockholmes.txt >  ssherlockholmes.txt
#########################
sed -i -E "/[A-Z][A-Za-z]+ [A-Z][A-Za-z]+/d" ./sherlockholmes.txt 


#2.f write command that replace all the sentences in () to sentences in [] ##assume that such sentences start and end in the same line
sed -i -E "s/\((.+)\)/\[\1\] /g" sherlockholmes.txt

#to see the lines we substitue:
#sed -nE "s/\((.+)\)/\[\1\] /gp" sherlockholmes.txt


#grep -E "\(.+\)" sherlockholmes.txt
#grep -E "\(.+\)" sherlockholmes.txt | sed -E "s/\((.+)\)/\[\1\] /g"





#grep -E "[A-Z][A-Za-z]+ [A-Z][A-Za-z]+" sherlockholmes.txt | wc -l

#sed -n -E "/[A-Z][A-Za-z]+ [A-Z][A-Za-z]+/p" sherlockholmes.txt | wc -l


#cat sherlockholmes.txt | sed -n 's/.*Sherlock //' | cut -d " " -f 1
#cat sherlockholmes.txt | sed -n 's/.*Sherlock //p' | cut -d " " -f 1
#echo "--------------------"
#cat sherlockholmes.txt | sed -n 's/.*Sherlock //p' | cut -d " " -f 1 | tr -d "[[:punct:]]" | tr -d "’" | sort | uniq -c
