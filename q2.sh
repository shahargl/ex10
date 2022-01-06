#Number of rows with Sherlock or Holmes
cat sherlockholmes.txt | sed -n '/Sherlock\|Holmes/p' | sed -n '$='

#Count of Sherlock or Holmes
cat sherlockholmes.txt | sed "s/ /\n/g" | sed 's/[A-Z]/\L&/g' | sed -n '/sherlock\|holmes/p' | sed -n '$='

#Replace Sherlock with Deadlock
cat sherlockholmes.txt | sed 's/Sherlock/Deadlock/g'

#Delete rows with names
sed -i -E "/([A-Z])\w+.([A-Z])\w+/d" ./ sherlockholmes.txt

#Replacing () to []
cat sherlockholmes.txt | sed 'y/()/[]/'
