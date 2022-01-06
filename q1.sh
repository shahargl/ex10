#number of rows
cat aliceinwonderland.txt | awk 'END{ print NR }'

#rows with "Alice"
cat aliceinwonderland.txt | awk '/Alice/' | awk 'END{print NR}'

#number of "Alice" with spaces
cat aliceinwonderland.txt | awk '/ Alice /' | awk 'END{print NR}'

#number of "Alice" with anything aside
cat aliceinwonderland.txt | awk '{print tolower($0)}' | awk '{print gsub("alice",$0)}' | awk '{sum+=$0} END{print sum}'

#shortest row
cat aliceinwonderland.txt | awk  '{if (length>1) print length, $0 | "$1 sort -n"}' | awk 'NR==1 {print $2}'

#five most common words
cat aliceinwonderland.txt | awk '{a[$0]++} END{for (k in a) print k,a[k]}' RS='[[:space:]]+' | sort -nrk2  | awk 'NR==1 ,NR==5'

#number of "Alice" in a row with a number
cat aliceinwonderland.txt | awk '/Alice/' | awk '/[0-9]/' | awk 'END{print NR}'
