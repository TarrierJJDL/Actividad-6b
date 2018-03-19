
val=$1
o=1

for i in $(cat nombres.txt);do

mkdir $i
o=1

while [ $o -le $val ]; do

mkdir $i/personal$o
o=$(($o+1))
done

done
