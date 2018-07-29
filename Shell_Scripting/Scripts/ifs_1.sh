line="this:is:Awesome"
IFS=:  # here ifs will look for :
set $line
echo $1
echo $2
echo $3