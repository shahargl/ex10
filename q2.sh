## Section 1
sed -n -E '/(Sherlock|Holmes)/p' sherlockholmes.txt | wc -l

## Section 2
tr ' ' '\n' < sherlockholmes.txt | sed -n -E '/(Sherlock|Holmes)/p' | wc -l

## Section 3
sed 's/Sherlock/Liam/g' sherlockholmes.txt

## Section 4

## Section 5
sed -i -E '/[A-Z][a-z]+ [A-Z][a-z]+/d' sherlockholmes.txt

## Section 6
sed 's/(\([a-zA-Z0-9]*\))/[\1]/g' sherlockholmes.txt

