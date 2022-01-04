(a) awk 'END{print NR}' aliceinwonderland.txt
(b) awk '/Alice/ {print}' aliceinwonderland.txt | awk 'END{print NR}'
(c) awk '/ Alice / {print}' aliceinwonderland.txt | awk 'END{print NR}'
(d) awk '{a[$0]++} END{for (k in a) print k,a[k]}' RS='[[:space:]]+' aliceinwonderland.txt | awk ' /Alice/  {print}' | awk '{SUM+=$2}END {print SUM}'
(e) awk '{print length $0}' aliceinwonderland.txt | sort -n | head -n 1
(f) cat aliceinwonderland.txt | awk '{print tolower($0)}' | grep -oE '\w{1,}' | sort | uniq -c | sort -nr | head -n 5
(g) awk '/Alice/' aliceinwonderland.txt | awk '/[0-9]/ {print}' | awk 'END{print NR}'
 

