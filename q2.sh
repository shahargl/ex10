#!/bin/bash

# a)
echo "a.The number of lines that have the word Sherlock or Holmes: "
sed -n '/Sherlock\|Holmes/p' sherlockholmes.txt | wc -l

# b)
echo "b.The number of times the words Sherlock or  Holmes show up in the text:"
sed -e 's/[[:punct:]]*//g;s/[[:space:]]\+/\n/g' sherlockholmes.txt | sed -n -E '/(Sherlock|Holmes)/Ip' | sed -n "$="
 
# c) Swapping the name Shelock with the name strange
sed 's/Sherlock/Strange/g' sherlockholmes.txt

# e) deleting rows with the name of a person or place:
# I created a new file called SH_D.txt which is a copy of the file to delete in to keep the original in tact.
cat sherlockholmes.txt > SH_D.txt
sed '/\b[A-Z]\w*\b\s\b[A-Z]\w*\b/d' SH_D.txt

# f) swapping () for []
sed  'y/()/[]/' sherlockholmes.txt



