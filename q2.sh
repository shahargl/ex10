# 2a
sed -n -E '/(Sherlock|Holmes)/p' sherlockholmes.txt | wc -l
# 2b
tr ' ' '\n' < sherlockholmes.txt | sed -n -E '/(Sherlock|Holmes)/p' | wc -l
# 2c
sed 's/Sherlock/Tomer/g' sherlockholmes.txt
# 2e
sed -r '/[A-Z][a-z]+ [A-Z][a-z]+/d' sherlockholmes.txt
# 2f
sed 's/(\([a-zA-Z0-9]*\))/[\1]/g' sherlockholmes.txt
