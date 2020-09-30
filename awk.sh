#AWK Programming-OS Assignment 3
#author: Yash Shirbhate
awk -F "|" ' {print "Student",$1,"scored",$4+$5+$6,"total marks &",percent=(($4+$5+$6)/75)*100,"% percentile."}{if(percent<40) print "Result: Sorry, you failed. Better luck next time?\n"
else if(percent>60&&percent<65) print "Result: First Class\n"
else if(percent>=66) print "Result: Distinction\n"
else print "Result: Pass\n"}' sheet