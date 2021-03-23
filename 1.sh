parametro=$1

for i in $(cat nombres.txt);do
    mkdir $i
    contador=1
    while [ $contador -le ${parametro} ];do
    mkdir ${i}/personal${contador}
    contador=$(($contador+1))
    done
done
