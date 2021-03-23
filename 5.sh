maxlinea=`cat listado.txt | wc -l`
linea=1
windows=0
linux=0
procwindows=0
proclinux=0

while [ $linea -le $maxlinea ];do
    sistema=`cat listado.txt | head -${linea} | tail -1 | awk '{print$2}'`
    procesos=`cat listado.txt | head -${linea} | tail -1 | awk '{print$3}'`

    if [ $sistema == "Windows" ]
    then
	windows=$(($windows+1))
	procwindows=$(($procwindows+$procesos))
    else
	linux=$(($linux+1))
	proclinux=$(($proclinux+$procesos))
    fi
    linea=$(($linea+1))
done

echo "Linux --> $linux $proclinux"
echo "Windows --> $windows $procwindows"