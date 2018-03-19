
lineas=`cat listado.txt | wc -l`
linea=1
k=0
l=0
t=0
q=0
while [ $linea -le $lineas ]; do


i=`cat listado.txt | head -$linea | tail -1 | awk '{print $2}'`
p=`cat listado.txt | head -$linea | tail -1 | awk '{print $3}'`

linea=$(($linea+1))

if [ $i = "Linux" ];then
    k=$(($k+1))
    t=$(($t+$p))
else 
    l=$(($l+1))
    q=$(($q+$p))
fi
done
echo "Linux -> $k $t"
echo "Windows -> $l $q"