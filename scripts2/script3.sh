
lineas=`cat precipitaciones.txt | wc -l`
linea=1
o=0
while [ $linea -le $lineas ]; do


i=`cat precipitaciones.txt | head -$linea | tail -1 | awk '{print $2}'`
k=`cat precipitaciones.txt | head -$linea | tail -1 | awk '{print $1}'`

linea=$(($linea+1))
if [ $i -eq 0 ]; then

 if [ $k -eq 1 ] || [ $k -eq 8 ]; then
	echo "Es lunes"
    else
	if [ $k -eq 2 ] || [ $k -eq 9 ]; then
	    echo "Es martes"
	else
	    if [ $k -eq 3 ] || [ $k -eq 10 ]; then
		echo "Es miercoles"
	    else
		if [ $k -eq 4 ]; then
		    echo "Es jueves"
		else
		    if [ $k -eq 5 ]; then
			echo "Es viernes"
		    else
			if [ $k -eq 6 ]; then
			    echo "Es sabado"
			else
			    if [ $k -eq 7 ]; then
				echo "Es domingo"
			    fi
			fi
		    fi
		fi
	    fi
	fi
    fi
fi
done

