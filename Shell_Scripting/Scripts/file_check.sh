# file check
echo "please enter a name"
read name
if [ -f $name ]  #this will check that the name entere is a file or not
	then        # -d is used for directory  
	echo "You entered a file name"
else 
	echo "your bad"
fi  