#!/bin/bash
echo "Welcome to flip coin simulator"

headCount=0
tailCount=0
count=1

#TO GET NUMBER OF TIMES HEAD AND TAIL WON
while [ $count -le 100 ]
do
    flipCoin=$(( RANDOM%2 ))
    if [ $flipCoin -eq 0 ]
    then
          ((headCount++))
    else
          ((tailCount++))
    fi   

    ((count++))
done

echo "Head has won $headCount times"
echo "Tail has won $tailCount times"
