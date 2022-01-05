#Q2
#a
sed -n '/Sherlock\|Holmes/p' sherlockholmes.txt | wc -l
#b
sed '/Sherlock\|Holmes/!d' sherlockholmes.txt | sed 's/Sherlock/Holmes/g' | grep -o "Holmes" | wc -l
#c
sed 's/Sherlock/Gal/g' sherlockholmes.txt
#d
cancelled
#e
sed -E "/[A-Z][A-Za-z]+ [A-Z][A-Za-z]+/d" sherlockholmes.txt
#g
sed -E "s/\((.+)\)/\[\1\] /g" sherlockholmes.txt