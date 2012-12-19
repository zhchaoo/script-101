#!/bin/sh

count=0

for file in *
do
    line=$(wc -l $file | cut -c1-8 | sed 's/ *//g')
    count=$(($count + $line))
done

echo $count
