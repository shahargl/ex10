#!/bin/bash
  
# (A)
echo "(A)"
sed -rn '/(Sherlock)|(Holmes)/p' sherlockholmes.txt | wc -l

# (B)
echo ""
echo "(B)"
sed -rn '/(Sherlock)|(Holmes)/p' sherlockholmes.txt | grep -o -E "(Sherlock)|(Holmes)" | wc -l

# (C)
echo ""
echo "(C)"
sed 's/Sherlock/Totohav Disheri/g' sherlockholmes.txt

# (D)
echo ""
echo "(D)"
sed -n 's/.* Sherlock \([[:alpha:]]*\).*/\1/p' sherlockholmes.txt

# (E)
echo ""
echo "(E)"
sed -E 's/^.*[A-Z][[:alpha:]]+ [A-Z][[:alpha:]]+.*//g' sherlockholmes.txt

# (F)
echo ""
echo "(F)"
sed -E 's/\((.*)\)/[\1]/g' sherlockholmes.txt