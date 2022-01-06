#1
sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt |wc -l

#2
sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt | grep -oE Holmes\|Sherlock |wc -l 
#3
sed 's/Sherlock/Gal/g' sherlockholmes.txt 

#5
cat sherlockholmes.txt > sherlockholmes_backup.txt
sed -i -E "/([A-Z])\w+.([A-Z])\w+/d" sherlockholmes.txt
#6
sed 'y/()/[]/' sherlockholmes.txt

