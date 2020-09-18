clear
echo 'Enter string 1 [the supposed to be substring ]'
read str1
echo 'Enter string 2'
read str2
if [ -z "$str1" ]; then echo 'String 1 cannot be empty. Please try again.'
exit
fi
str1len=`echo $str1 | wc -c`
str1len=`expr $str1len - 1`
str2len=`echo $str2 | wc -c`
str2len=`expr $str2len - 1`
i=1
j=1
m=1
while [ $j -le $str1len ]
do
while [ $i -le $str2len ]
do
l=`echo $str2 | cut -c $i`
k=`echo $str1 | cut -c $j`
if [ "$k" == "$l" ]; then
array[$m]=$i
repeatcheck[$m]=$l
m=`expr $m + 1`
j=`expr $j + 1`
fi
i=`expr $i + 1`
done
i=1
if [ "$k" != "$l" ]; then
j=`expr $j + 1`
fi
done
arrlen=`echo ${array[*]} | wc -c`
arrlen=`expr $arrlen - 1`
j=`expr $j - 1`
if [ "$j" == "$m" ]; then
echo 'Substring exists: '$str1 'at positions '${array[*]} 'of string 2'
exit
else
echo 'Substring doesnt exist.'
exit
fi