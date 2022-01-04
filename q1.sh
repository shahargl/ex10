#!/bin/bash
#q1.a
awk 'END{print NR}' aliceinwonderland.txt


#the number is 3325


#q1.b

awk '/Alice/{count ++} END{print count}' aliceinwonderland.txt
#393



#q1.c 

 awk -v str=" Alice " '{ c += gsub(str, str) } END { print c }' aliceinwonderland.txt
#155
#q1.d


awk -v str="Alice" '{ c += gsub(str, str) } END { print c }' aliceinwonderland.txt

#395

#q1.5

awk '(NR==1||length(min)>length()){min=$0}END{print min}' aliceinwonderland.txt



#q1.6
 
grep -E -o '[[:alpha:]]{2,}' aliceinwonderland.txt | awk '{a[$1]++}END{for(k in a)print a[k],k}' | sort -n | tail -5


#509 she
#527 it
#725 to
#802 and
#1526 the


#1.7
awk '/ [O,o]ne[/,,/., ]| [T,t],wo,[/,,., ]| [T,t]hree[/,,., ]| [F,f]our[/,,., ]| [F,f]ive[/,,., ]| [S,s]ix[/,,., ]|
 [S,s]even[/,,., ]| [E,e]ight[/,,., ]| [N,n]ine[/,,., ]/ {print $0}' aliceinwonderland.txt | awk '/Alice/ {print $0}' | wc -l
#12
