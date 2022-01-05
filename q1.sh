# answer a: 3325
awk END'{print NR}' aliceinwonderland.txt
# answer b: 393
awk '/Alice/ {print $0}' aliceinwonderland.txt | awk END'{print NR}'
# answer c: 212
tr ' ' '\n' < aliceinwonderland.txt | awk '/^Alice$/' | awk END'{print NR}'
# answer d: 395
tr ' ' '\n' < aliceinwonderland.txt | awk '/Alice/' | awk END'{print NR}'
# answer e: 1 word in row
awk ' !/^[[:space:]]*$/ {print NF, $0}' aliceinwonderland.txt | sort -n | head -n 1
# answer f:
tr ' ' '\n' < aliceinwonderland.txt | awk '!/^[[:space:]]*$/ {a[$1]++}END{for (k in a)print a[k],k}' | sort -n -r | head -n 5
# answer g: 0
awk ' /[[:digit:]]/ {print $0}' aliceinwonderland.txt | awk '/Alice/ {print $0}' | awk END'{print NR}'
