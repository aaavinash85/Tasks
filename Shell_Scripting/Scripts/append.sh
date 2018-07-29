echo "please provide a file name"
read fname
if [ -f $fname ]    # this will check for file
	then 
	echo "file exist"
	if [ -w $fname ]  # this will check for write permissions
		then
		echo "you have write permissions"
		cat >> $fname
	else
		echo "you don't have permissions"
	fi
else 
	echo "fil doesn't exist"
fi
