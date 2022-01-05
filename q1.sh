#! /usr/bin/bash

# uncomment the question you would like to run

# question 1

# a)
# awk '{print}' aliceinwonderland.txt | wc -l

# b)
# awk '/Alice/ {print}' aliceinwonderland.txt | wc -l

# c)
# awk -v str=" Alice " '{ c += gsub(str, str) } END { print c }' aliceinwonderland.txt

# d)
# awk -v str="Alice" '{ c += gsub(str, str) } END { print c }' aliceinwonderland.txt

# e)
# awk '(NR==1||length(min)>length()){min=$0}END{print min}' aliceinwonderland.txt

# f)
# grep -o -E '\w+' aliceinwonderland.txt | awk '{A[$1]++}END{for(i in A)print A[i], i}' | sort -n | tail -5

# g)
# I refer to number as in the words (one, two, three...)
# awk '/ [O,o]ne[/,,/., ]| [T,t],wo,[/,,., ]| [T,t]hree[/,,., ]| [F,f]our[/,,., ]| [F,f]ive[/,,., ]| [S,s]ix[/,,., ]| [S,s]even[/,,., ]| [E,e]ight[/,,., ]| [N,n]ine[/,,., ]/ {print $0}' aliceinwonderland.txt | awk '/Alice/ {print $0}' | wc -l
