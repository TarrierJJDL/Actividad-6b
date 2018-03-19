
lineas=`cat precipitaciones.txt | wc -l`
linea=1
o=0
while [ $linea -le $lineas ]; do


i=`cat precipitaciones.txt | head -$linea | tail -1 | awk '{print $2}'`

linea=$(($linea+1))
o=$(($o+$i))
done

media=$(($o/$lineas))
echo "la media de precipitaciones es de $media"

