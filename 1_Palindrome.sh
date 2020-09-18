# Name: Yash Shirbhate
# Roll no. 51
# SRN no. 201800300
clear
echo "Enter a string: "
read str
if [ -z "$str" ]; then echo "Please enter a string. Null input not accepted." #Check for null input
exit
fi
string=$str #Input is stored in $string
len=`echo $string | wc -c`  
len=`expr $len - 1`  #Length of input string is calculated
#echo $len
i=1
j=`expr $len / 2`
#echo $j
while [ $i -le $j ]
do
k=`echo $str | cut -c $i`
l=`echo $str | cut -c $len`
if [ $k != $l ] ; then
echo "String is not palindrome"
exit
fi
i=`expr $i + 1`
len=`expr $len - 1`
done
echo "String is palindrome"