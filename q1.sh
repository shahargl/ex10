#Q1
#a
awk 'END{print NR}' aliceinwonderland.txt
#b
#option 1
awk '/Alice/ {print}' aliceinwonderland.txt | wc -l
#option 2
awk '/Alice/ {print}' aliceinwonderland.txt | awk 'END{print NR}'
#c
awk '/ Alice /' aliceinwonderland.txt | awk 'END{print NR}'
#d
cancelled
#e
awk '{ if (length($0) < min) min = length($0) } END { print min }' aliceinwonderland.txt
#f
awk '{for (i=1;i<=NF; i++){words[$i]++}}END{for (w in words) print words[w]"\t"w}' aliceinwonderland.txt | sort -nr | head -5
#g
awk '/[[:digit:]]/' aliceinwonderland.txt | awk '/Ailce/' | wc -l
