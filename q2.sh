sed '/\(Sherlock\|Holmes\)/!d' ./sherlockholmes.txt | sed -n '$='
sed '/\(Sherlock\|Holmes\)/!g' ./sherlockholmes.txt | sed -n '$='
sed -i 's/Sherlock/Panda/g' sherlockholmes.txt 
sed '/[A-Z][a-z]\+ [A-Z][a-z]\+/d' sherlockholmes.txt
sed -E 's/\((.*+)\)/\[\1\]/g' sherlockholmes.txt 
