#1
awk 'END {print NR}' aliceinwonderland.txt

#2
awk '/Alice/ {print}' aliceinwonderland.txt | awk 'END {print NR}'

#3
cat aliceinwonderland.txt | awk '/ Alice / {print}' | awk 'END {print NR}'

#4
awk '{a[$0]++} END{for (k in a) print k,a[k]}' RS='[[:space:]]+' aliceinwonderland.txt | awk ' /Alice/  {print}' | awk '{SUM+=$2}END {print SUM}'s


#5
awk 'length != 1 {print NR, length, $0}' aliceinwonderland.txt | sort -n -k 2 | head -n 1 |awk '{print $3}'

#6
awk '{a[$0]++} END{for (k in a) print k,a[k]}' RS='[[:space:]]+' aliceinwonderland.txt | sort -nk2 | tail -5

#7
#since there is no numbers, also checking Chapter number:
awk '/Alice/ && /[0-9]/ {print}' aliceinwonderland.txt | awk 'END{print NR}'

awk '/CHAPTER [XIV]+.*Alice/ {print}' aliceinwonderland.txt | awk 'END{print NR}'