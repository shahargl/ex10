#!/bash/bin

#Answer 1.a.
awk '$0' aliceinwonderland.txt | wc -l

#1.b
awk '/Alice/ {print}' aliceinwonderland.txt | wc -l

#1.c 
awk '/ Alice / {print}' aliceinwonderland.txt | wc -l

#1.d
grep -E "Alice’s|Alice" <aliceinwonderland.txt | awk '{print $0}' | wc -l

#1.e
awk '{print $1}' aliceinwonderland.txt | sort -n | head -n1

#1.f
tr -cs '[:alnum:]' '\n' <aliceinwonderland.txt | awk '{a[$1]++}END{for(k in a)print a[k], k}' | sort -n | tail -n5 | awk '{print $2}'

#1.g
awk '/ [O,o]ne[/,,., ]| [T,t],wo,[/,,., ]| [T,t]hree[/,,., ]| [F,f]our[/,,., ]| [F,f]ive[/,,., ]| [S,s]ix[/,,., ]| [S,s]even[/,,., ]| [E,e]ight[/,,., ]| [N,n]ine[/,,., ]/
 {print $0}' aliceinwonderland.txt | awk '/Alice/ {print $0}' | wc -l


#########

#Question 2

#a
sed -nE '/Holmes|Sherlock/p' sherlockholmes.txt | wc -l

#b
sed 's/[[:space:]]/\n/g' sherlockholmes.txt | sed -n -E '/(Sherlock|Holmes)/p' | wc -l

#c
sed 's/Sherlock/Idooo/g' sherlockholmes.txt

#d
sed -E '/^[A-Z][a-z]+ [A-Z][a-z]+/d' sherlockholmes.txt
