#!/bin/bash

#A
echo "#Question A"
sed -rn '/(Sherlock)|(Holmes)/p' sherlockholmes.txt | wc -l

#B
echo "#Question B"
sed 's/[[:space:]]/\n/g' sherlockholmes.txt | sed -n -E '/(Sherlock|Holmes)/p' | wc -l

#C
echo "#Question C"
sed 's/Sherlock/TomerSharon/g' sherlockholmes.txt

#D
echo "#Question D was ommited from HW"
#Ommited from HW

#E
echo "#Question E"
sed -E '/([A-Z])\w+ ([A-Z])\w+/d' sherlockholmes.txt

#F
echo "#Question F"
sed -E 's/\((.*)\)/[\1]/g' sherlockholmes.txt


