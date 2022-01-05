#!/bin/bash

echo "A.num of rows with either Shelock or Holmes :"
sed -n -E '/(Sherlock|Holmes)/Ip' sherlockholmes.txt | wc -l
echo ""
echo "B.num of occurences which Sherlock or Holmes appeared :"
cat sherlockholmes.txt | tr " " "\n"  | sed -n -E '/(sherlock|Holmes)/Ip' | wc -l
echo ""
echo "C.command that subtitutes Sherlock with Shahar :"
sed  -n -E 's/Sherlock/Shahar/pI' sherlockholmes.txt | grep --color  Shahar
echo ""
#Question D is 'canceled'
echo "E.command that deletes rows which contain full name or place name"
sed -n  -E '/^.*(([A-Z])([a-z])+) (([A-Z])([a-z])+).*$/d' sherlockholmes.txt
echo ""
echo "F.command which replace all sentences in oval brackets into squared brackets :"
sed -n  -E 's/\(([^\)]+)\)/\[\1\]/gp' sherlockholmes.txt

