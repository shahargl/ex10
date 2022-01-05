#!/bash/bin

#Answer 1.a.
awk '$0' aliceinwonderland.txt | wc -l

#1.b
awk '/Alice/ {print}' aliceinwonderland.txt | wc -l

#1.c
awk '/ Alice /' aliceinwonderland.txt | awk 'END{print NR}') 

#1.d
grep -E "Alice’s|Alice" <aliceinwonderland.txt | awk '{print $0}' | wc -l

#1.e
awk '{print $1}' aliceinwonderland.txt | sort -n | head -n1

#1.f
tr -cs '[:alnum:]' '\n' <aliceinwonderland.txt | awk '{a[$1]++}END{for(k in a)print a[k], k}' | sort -n | tail -n5 | awk '{print $2}'

#1.g
awk '/[[:digit:]]/' aliceinwonderland.txt | awk '/Ailce/' | wc -l


