# answer a:
sed -n -E '/(Sherlock|Holmes)/p' sherlockholmes.txt | wc -l
# answer b:
tr ' ' '\n' < sherlockholmes.txt | sed -n -E '/(Sherlock|Holmes)/p' | wc -l
# answer c:
sed 's/Sherlock/Liam/g' sherlockholmes.txt
# answer e:
sed -E '/[A-Z][a-z]+ [A-Z][a-z]+/d' sherlockholmes.txt
# answer f
sed -E 's/\((.+)\)/[\1] /g' sherlockholmes.txt
