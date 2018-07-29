# if-else statement
echo "please provide a number "
read num
if [ $num -lt 5 ]  #here -lt stands for less than
then               # and for greater than we have to choose -gt
   echo "Good"     # -eq is used for equality 
else
	echo "Bad"
fi