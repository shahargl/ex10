#!/bin/bash 

echo "a. number of lines contains the word sherlok or holmes: "
sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt | wc -l

echo "b. number of occuarnces of the word sherlok or holmes: "
sed 's/[[:space:]]/\n/g' sherlockholmes.txt | sed -n -E '/(Sherlock|Holmes)/p' | wc -l

echo "c. replace sherlok to idan "
sed  's/Sherlock/Idan/g' sherlockholmes.txt

echo "d. 5 most common words after Sherlock "
cat sherlockholmes.txt | sed -n 's/.*Sherlock //p' | cut -d " " -f 1 | tr -d "[[:punct:]]" | tr -d "’" | sort | uniq -c


echo "e. delete every name "

cat sherlockholmes.txt >  sherlockholmes_backup.txt
sed -i -E "/([A-Z])\w+.([A-Z])\w+/d" ./sherlockholmes_backup.txt

echo "f. replace () to [] "

sed 's/(/[/g; s/)/]/g' sherlockholmes.txt
