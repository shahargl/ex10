sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt | wc -l

sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt | grep -oE Sherlock\|Holmes | wc -l

sed 's/Sherlock/Shahar/' sherlockholmes.txt

sed -i -E "/[A-Z][a-z]+ [A-Z][a-z]+/d" sherlockholmes.txt

sed -i -E "s/\((.+)\)/\[\1\] /g" sherlockholmes.txt