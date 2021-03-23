maxlineas=`cat precipitaciones.txt | wc -l`
linea=1
cantidad=0
while [ $linea -le $maxlineas ];do
    contenido=`cat precipitaciones.txt | head -${linea} | tail -1 |awk '{print $2}'`
    cantidad=$((${cantidad}+${contenido}))
    
    linea=$(($linea+1))
done
media=$(($cantidad/10))
echo "La media de precipitaciones es $media"