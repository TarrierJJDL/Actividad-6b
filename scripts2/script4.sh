
lineas=`cat numeros.txt | wc -l`
linea=1
k=0
l=0
echo "Pares"
while [ $linea -le $lineas ]; do


i=`cat numeros.txt | head -$linea | tail -1`

linea=$(($linea+1))
o=$(($i%2))
if [ $o -eq 0 ];then
    k=$(($k+1))
    echo "$i"

fi
done
echo "Hay $k pares"

echo "Impares"
linea=1

while [ $linea -le $lineas ]; do


i=`cat numeros.txt | head -$linea | tail -1`

linea=$(($linea+1))
o=$(($i%2))
if [ $o -ne 0 ];then
    l=$(($l+1))
    echo "$i"
fi
done
echo "Hay $l impares"