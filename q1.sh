awk 'END{print NR}' ./aliceinwonderland.txt
awk '/Alice/ {count++} END{print count}' aliceinwonderland.txt
awk -v str=" Alice " '{ c += gsub(str, str) } END { print c }' aliceinwonderland.txt
awk -v str=Alice '{ c += gsub(str, str) } END { print c }' aliceinwonderland.txt 
awk '{ print length(/bin/bash) t /bin/bash }' aliceinwonderland.txt | sort -nur | tail -n2 | head -n1 #the shortest line that isn't empty
awk -v RS=[:punct:] '{for(i=1;i<=NF;i++) words[]++;}END{for (i in words) print words[i] i}' aliceinwonderland.txt | sort -n | tail -n5
awk -v FS="[^a-zA-Z']" '{for(i=1;i<=NF;i++) words[]++;}END{for (i in words) print words[i]" "i}' aliceinwonderland.txt | sort -n  | tail -n6 | head -n-1 #not counting spaces as a word
awk 'BEGIN{count=0} /[0-9]/ {count+=gsub("Alice", "x")} END{print count}' ./aliceinwonderland.txt #no line includes a digit
