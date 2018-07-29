#Arthimetic using expr
echo "please enter one number"
read a 
echo "please enter another number"
read b
echo "Addition = `expr $a + $b`"
echo "Subtraction = `expr $a - $b`"
echo "Multiplication = `expr $a \* $b`"