
ls $1 > lista.txt
lineas=`cat lista.txt | wc -l`
linea=1
o=0
while [ $linea -le $lineas ]; do

i=`cat lista.txt | head -$linea | tail -1 `
echo $i
rm $1/$i 
linea=$(($linea+1))
o=$(($o+1))
done

echo "$o borrados"