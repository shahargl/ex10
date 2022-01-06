awk 'END{print NR}' aliceinwonderland.txt

awk '/Alice/ {print}' aliceinwonderland.txt | awk 'END { print NR }'

awk '/ Alice / {print}' aliceinwonderland.txt | awk 'END { print NR }'

awk '{print gsub("Alice",$0)}' aliceinwonderland.txt | awk 'BEGIN{sum=0}{sum=sum+$1}END{print sum}'

awk '(NR==1||length<shortest){shortest=length} END {print $0}' aliceinwonderland.txt

tr -cs '[:alnum:]' '\n' <aliceinwonderland.txt | awk '{a[$1]++}END{for(k in a)print a[k], k}' | sort -n | tail -n5 

awk '/ [O,o]ne[/,,., ]| [T,t],wo,[/,,., ]| [T,t]hree[/,,., ]| [F,f]our[/,,., ]| [F,f]ive[/,,., ]| [S,s]ix[/,,., ]| [S,s]even[/,,., ]| [E,e]ight[/,,., ]| [N,n]ine[/,,., ]/ {print $0}' aliceinwonderland.txt | awk '/Alice/ {print $0}' | wc -l