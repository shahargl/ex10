# 1a
awk END'{print NR}' aliceinwonderland.txt
# 1b
awk '/Alice/ {print}' aliceinwonderland.txt | wc -l
# 1c
tr ' ' '\n' < aliceinwonderland.txt | awk '/^Alice$/' | awk END'{print NR}'
# 1d
tr ' ' '\n' < aliceinwonderland.txt | awk '/Alice/' | awk END'{print NR}'
# 1e
awk ' !/^[[:space:]]*$/ {print NF, $0}' aliceinwonderland.txt | sort -n | head -n 1
# 1f
for word in $(cat aliceinwonderland.txt) ; do echo $word; done | awk '! /([[:punct:]]|[[:space:]])/' | awk '{a[$1]++}END {for (k in a) print a[k], k}' | sort -n -r | head -n 5
# 1g
awk ' /[[:digit:]]/ {print $0}' aliceinwonderland.txt | awk '/Alice/ {print $0}' | awk END'{print NR}'
