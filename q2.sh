#!/bin/bash

echo '2.a:' 

sed -E '/(Holmes|Sherlock)/p' sherlockholmes.txt | wc -l

echo '2.b:'

sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt | grep -oE Sherlock\|Holmes | wc -l

echo '2.c:'

sed 's/Sherlock/Lihi/g' sherlockholmes.txt 

echo '2.e:'
cat sherlockholmes.txt >  sherlockholmes_backup1.txt

sed -E '/[A-Z][a-z]+\s[A-Z][a-z]+/d' ./sherlockholmes_backup1.txt

echo '2.f:'
sed -E "s/\((.+)\)/\[\1\] /g" sherlockholmes.txt
