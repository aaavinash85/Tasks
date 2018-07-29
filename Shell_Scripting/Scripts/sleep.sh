echo "write here"
read str
for word in $str
do
	echo $word
	sleep 5    #it will wait for five sec to display 2nd word and soon
done