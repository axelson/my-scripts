#/bin/bash
first=211
last=317

loc=http://www.uhwarriorfan.com/UHvsFresno2007/UHvsFresno_Band_3/images/UHvsFresno2007_Band%20

echo $loc


echo $test
for i in `seq $first $last`;
do
    #echo "$loc$i.jpg"
    `wget -nc -w 50 "$loc$i.jpg"`
done
