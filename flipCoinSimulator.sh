#!/bin/bash
echo "Welcome to flip coin simulator"

hcount=0
tcount=0

#TO GET NUMBER OF TIMES HEAD AND TAIL WON
while [ 1 ]
do
	if [ $hcount -lt 21 -o $tcount -lt 21 ]
	then
		flipCoin=$((RANDOM%2))
		if [ $flipCoin -eq 1 ]
		then
			tcount=$(($tcount+1))
		else
			hcount=$(($hcount+1))
		fi
	else
		break
	fi
done

if [ $hcount -gt $tcount ]
then
	diff=$(($hcount - $tcount))
	echo "Heads Won by $diff || HeadCount : $hcount || TailCount : $tcount"
elif [ $tcount -gt $hcount ]
then
	diff=$(($tcount - $hcount))
	echo "Tails Won by $diff || TailCount : $tcount || HeadCount : $hcount"
elif [ $hcount -eq $tcount ]
then
	echo "-Tie-"
	while [ $(( hount - tcount )) -ne 2 ]
          do
		flipCoin=$((RANDOM%2))
               if [ $flipCoin -eq 0 ]
               then
                    ((hcount++))
               else
                    ((tcount++))
               fi
         done
	if [ $hcount -gt $tcount ]
	then
        	diff=$(($hcount - $tcount))
        	echo "Heads Won by $diff || HeadCount : $hcount || TailCount : $tcount"
	else
        	diff=$(($tcount - $hcount))
        	echo "Tails Won by $diff || TailCount : $tcount || HeadCount : $hcount"
	fi
fi
