#!/bin/bash
  
# (A)
echo "(A)"
awk 'END{print NR}' aliceinwonderland.txt

# (B)
echo ""
echo "(B)"
awk '/Alice/ {print}' aliceinwonderland.txt | awk 'END{print NR}'

# (C)
echo ""
echo "(C)"
awk '{sum+=gsub(" Alice ","")} END {print sum+0}' aliceinwonderland.txt

#(D)
echo ""
echo "(D)"
awk '{sum+=gsub(".*Alice.*","")} END {print sum+0}' aliceinwonderland.txt

# (E)
echo ""
echo "(E)"
awk 'length != 1 {print NR, length, $0}' aliceinwonderland.txt | sort -n -k 2 | head -n 1

# (F)
echo ""
echo "(F)"
tr -cs '[:alnum:]' '\n' <aliceinwonderland.txt | awk '{a[$1]++}END{for(k in a)print a[k],k}' | sort -n | tail -n 5

# (G)
echo ""
echo "(G)"
awk '/CHAPTER [XIV]+.*Alice/ {print}' aliceinwonderland.txt | awk 'END{print NR}'