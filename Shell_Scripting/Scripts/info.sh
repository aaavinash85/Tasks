#in this we will extract info for particular user from the passwd file
echo "please provide username"
read name
line= `grep $name /etc/passwd`
IFS=:
set $line
echo $1
echo $2
echo $3

