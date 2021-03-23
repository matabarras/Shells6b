
inicio=1
while [ $inicio -le 244 ];do

    ping=`ping 192.168.0.${inicio} -c 1 | tail -2 | head -1 | awk '{print$4}'`

    if [ $ping == 1 ]
    then
	ip="192.168.0.${inicio}"
	echo $ip>>ipsactivas.txt
    fi

    inicio=$(($inicio+1))
done