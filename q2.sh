#!/bin/bash

#a
sed -nE '/Holmes|Sherlock/p' sherlockholmes.txt | wc -l 
#same 

#b
sed 's/[[:space:]]/\n/g' sherlockholmes.txt | sed -n -E '/(Sherlock|Holmes)/p' | wc -l
# Same


#c
sed 's/Sherlock/Idooo/g' sherlockholmes.txt
# Same


#d - Question has been deleted

#e 
sed -i -E "/[A-Z][A-Za-z]+ [A-Z][A-Za-z]+/d" ./sherlockholmes.txt

#f
sed -i -E "s/\((.+)\)/\[\1\] /g" sherlockholmes.txt

