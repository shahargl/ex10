#a
awk 'END{print NR}' aliceinwonderland.txt

#b
awk '/Alice/ {print}' aliceinwonderland.txt | awk 'END{print NR}'
#onther option
#awk '/Alice/{count ++} END{print count}' aliceinwonderland.txt

#c
awk '/ Alice / {print}' aliceinwonderland.txt | awk 'END{print NR}'

#d 
awk '{a[$0]++} END{for (k in a) print k,a[k]}' RS='[[:space:]]+' aliceinwonderland.txt | awk ' /Alice/  {print}' | awk '{SUM+=$2}END {print SUM}'

#e
awk '{print length $0}' aliceinwonderland.txt | sort -n | head -n 1
#1

#f
awk '{print tolower($0)}' aliceinwonderland.txt | grep -o '[[:alpha:]]*' | awk '{a[$1]++}END{for(k in a)print a[k],k}' | sort -nr | head -5

#g
awk '/Alice/' aliceinwonderland.txt | awk '/[0-9]/ {print}' | awk 'END{print NR}'