(a) sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt | wc -l
(b) sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt | grep -oE Sherlock\|Holmes | wc -l
(c) sed 's/Sherlock/Lior/' sherlockholmes.txt
(e) sed -i -E "/[A-Z][a-z]+ [A-Z][a-z]+/d" sherlockholmes.txt
(f) sed -i -E "s/\((.+)\)/\[\1\] /g" sherlockholmes.txt
