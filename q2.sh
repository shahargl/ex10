#!/bin/bash
#a
sed -rn '/(Sherlock)|(Holmes)/p' sherlockholmes.txt |wc -l
#b
sed 's/[[:space:]]/\n/g' sherlockholmes.txt | sed -n -E '/(Sherlock|Holmes)/p' | wc -l
#c
sed 's/Sherlock/Tom/g' sherlockholmes.txt

#e
sed -r '/([A-Z])\w+/d' sherlockholmes.txt
#f
sed -r '/([A-Z])\w+ ([A-Z])\w+/d' sherlockholmes.txt
#g
sed -E 's/\((.*)\)/[\1]/g' sherlockholmes.txt


