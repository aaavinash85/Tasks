#in this we will add two numbrs
num1=3
num2=5
sum=$((num1=num2)) #this will add two numbers
echo "sum of two numbers is $sum " #this will display the result stored in sum

#now w will get the two numbers from user 
echo "please enter one number"
read a   #read is used to ge tthe user input
echo "please enter number two"
read b
add=$((a+b))
echo "the result is $add"
  
 