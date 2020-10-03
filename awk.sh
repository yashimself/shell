#AWK Programming-OS Assignment 3
#author: Yash Shirbhate
awk -F "|" ' {OFS="|"  ; percent=(($4+$5+$6+$7+$8)/125)*100
 if(percent<40) print NR" "," " $0 ," Total: "$4+$5+$6," " percent"% ", " Result: F\n"
else if(percent>=40&&percent<=45) print NR" "," "$0 ," Total: "$4+$5+$6+$7+$8," " percent"% "," Result: C\n"
else if(percent>=46&&percent<=55) print NR" "," "$0 ," Total: "$4+$5+$6+$7+$8," " percent"% "," Result: C+\n"
else if(percent>=56&&percent<=65) print NR" "," "$0 ," Total: "$4+$5+$6+$7+$8," " percent"% "," Result: B\n"
else if(percent>=66&&percent<=75) print NR" "," "$0 ," Total: "$4+$5+$6+$7+$8," " percent"% "," Result: B+\n"
else if(percent>=76&&percent<=85) print NR" "," "$0 ," Total: "$4+$5+$6+$7+$8," " percent"% "," Result: A\n"
else if(percent>=86&&percent<=95) print NR" "," "$0 ," Total: "$4+$5+$6+$7+$8," " percent"% "," Result: A+\n"
else if(percent>95) print NR" "," "$0 ," Total: "$4+$5+$6," " percent"%  "," Result: O\n"
}' sheet
