## Section 1
awk 'END {print NR}' aliceinwonderland.txt

## Section 2
awk '/Alice/' aliceinwonderland.txt | awk 'END{print NR}'

## Section 3
tr ' ' '\n' < aliceinwonderland.txt | awk '/^Alice$/' | awk END'{print NR}'

## Section 4
expr $(tr ' ' '\n' < aliceinwonderland.txt | awk '/Alice/' | awk END'{print NR}') - $(tr ' ' '\n' < aliceinwonderland.txt | awk '/^Alice$/' | awk END'{print NR}') 

## Section 5
awk ' !/^[[:space:]]*$/ {print NF, $0}' aliceinwonderland.txt | sort -n | head -n 1

## Section 6
tr ' ' '\n' < aliceinwonderland.txt | awk '!/^[[:space:]]*$/ {a[$1]++}END{for (k in a)print a[k],k}' | sort -n -r | head -n 5

## Section 7
awk ' /[[:digit:]]/ {print $0}' aliceinwonderland.txt | awk '/Alice/ {print $0}' | awk END'{print NR}'
