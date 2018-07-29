#table of any number
echo "please enter a number"
read numb
for i in 0 1 2 3 4 5 6 7 8 9 10
do
	echo " $numb x $i = `expr $numb \* $i` "
	#a= $(( i * numb ))
	
done 