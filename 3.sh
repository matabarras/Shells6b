
maxlineas=`cat precipitaciones.txt | wc -l`
linea=1


while [ $linea -le $maxlineas ];do
for i in lunes martes miercoles jueves viernes sabado domingo; do
	contenido=`cat precipitaciones.txt | head -${linea} | tail -1 |awk '{print $2}'`
	if [ $contenido == 0 ]
	then
	echo "El dia $i no llovio"
	fi
    linea=$(($linea+1))
    
    done

done