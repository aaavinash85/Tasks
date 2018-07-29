echo "provie a number b/w 50 and 100 "
read num
if [ $num -le 100 -o $num -ge 50 ] # -o is used for OR
	then 
	echo "you are with in limits"
else
	echo " you are out of limits"
fi