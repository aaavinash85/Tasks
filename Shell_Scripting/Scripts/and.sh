echo "provie a number b/w 50 and 100 "
read num
if [ $num -le 100 -a $num -ge 50 ] # -a is used for AND
	then 
	echo "you are with in limits"
else
	echo " you are out of limits"
fi
