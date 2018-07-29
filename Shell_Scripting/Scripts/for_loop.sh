for item in *
do
    if [ -f $item ]  #this checks for files
    	then
    	echo $item   #this will display the name of each and every file
    fi
done