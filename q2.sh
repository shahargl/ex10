#! /usr/bin/bash

# uncomment the answer you would like to run
#####
# question 2

# a)
# sed -nE '/Holmes|Sherlock/p' sherlockholmes.txt | wc -l

# b)
# sed -nE '/Holmes|Sherlock/p' sherlockholmes.txt | grep -Ec 'Sherlock|Holmes'

# c)
# sed -nE 's/Sherlock/Charles/p' sherlockholmes.txt

# d)
# dont need to do

# e)
# sed -E '/([A-Z][a-z]*\s[A-Z][a-z]*)/d' sherlockholmes.txt

# f)
# sed -E 's/\(([^()]+)\)/[\1]/g' sherlockholmes.txt
