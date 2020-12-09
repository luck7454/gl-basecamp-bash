while (true)
do
echo "Insert first number and press Enter"
read fno
if [ $fno -eq $fno 2>/dev/null ];
then
c=1
else
echo "please, use only numbers"
c=0
fi
if [ $c -eq 1 ];
then
break
fi
done

while(true)
do
echo "Insert second number and press Enter"
read sno
if [ $sno -eq $sno >/dev/null 2>&1 ]
then
c=1
else
echo "please, use only numbers"
c=0
fi
if [ $c -eq 1 ]
then
break
fi
done

while(true)
do
printf "enter the operation (add,div,mul,sub) of $fno and $sno\n"
read op
count=0
##addition

if [ $op = add ]
then
echo "$fno+$sno is `expr $fno + $sno`"

#multiplication

elif [ $op = mul ];
then
echo "$fno*$sno is `expr $fno \* $sno`"

#substraction

elif [ $op = sub ]
then
while(true)
do
printf "Please, choose an action \n 1. $fno-$sno \n 2. $sno-$fno"
printf "\n press the option you want to perform?(1 or 2)\n"
read opt
if [ $opt = 1 ]
then
echo "$fno-$sno is `expr $fno - $sno`"
break
elif [ $opt = 2 ]
then
echo " $sno-$fno  is `expr $sno - $fno`"
break
else "please enter valid options to proceed(1 or 2)";
clear
fi
done

#division
elif [ $op = div ]
then
while(true)
do
printf "Please, choose an action \n 1. $fno/$sno \n 2. $sno/$fno"
printf "\n press the option you want to perform?(1 or 2)\n"
read opt
if [ $opt = 1 ]
then
echo "$fno divided by $sno is  `expr $fno / $sno`"
break
elif [ $opt = 2 ]
then
echo " $sno divided by $fno  is `expr $sno / $fno`"
break
else
clear
fi
done
echo "valid option please"
count=1
fi

if [ $count -eq 0 ]
then
echo "Do you want to do more ops"
echo "(y/n)"
read ans
clear
if [ $ans = n ]
then
break
fi
fi
done