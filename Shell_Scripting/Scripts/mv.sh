#this script will remane the file_name
echo "please enter the name of file you want to change"
read a
echo "please enter a new name"
read b
mv $a $b
echo "the file name changed to $b from $a"
