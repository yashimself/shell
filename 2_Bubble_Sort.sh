clear
#Input the integers in an array
echo 'Enter total number of integers to be sorted: '
read n
if [ $n -gt 10 ]; then 
echo 'Sorry, no more than 10 integers allowed! Please try again with less than or 10 integers'
exit
fi
i=0
while [ $i -lt $n ]
do
echo 'Enter integer' `expr $i + 1`
read num[$i]
i=`expr $i + 1`
done
#<-------------Menu to choose 1)Ascending Sort 2)Descending Sort 3)Exit
echo 'Select one of the following:'
select choice in Ascending Descending Close
do
case $choice in
#<---------------Ascending Sort---------------->
Ascending) 
k=0
while [ $k -lt `expr $n - 1` ]
do
j=0
while [ $j -lt `expr $n - $k - 1` ]
do
if [ ${num[j+1]} -lt ${num[j]} ]; then
temp=${num[j]}
num[$j]=${num[j+1]}
num[`expr $j + 1`]=$temp
fi
j=`expr $j + 1`
done
k=`expr $k + 1`
done
echo 'Sorted in Ascending Order:' ${num[*]}
;;
 #<-------------Descending Sort------------->
Descending)
k=0
while [ $k -lt `expr $n - 1` ]
do
j=0
while [ $j -lt `expr $n - $k - 1` ]
do
if [ ${num[j+1]} -gt ${num[j]} ]; then
temp=${num[j]}
num[$j]=${num[j+1]}
num[`expr $j + 1`]=$temp
fi
j=`expr $j + 1`
done
k=`expr $k + 1`
done
echo 'Sorted in Descending Order:' ${num[*]}
;;
#<---------------------Exit------------------>
Close)
break
;;
esac
done