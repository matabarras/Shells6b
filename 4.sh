contadorpar=0
contadorimpar=0
for i in $(cat numeros.txt);do
resto=`expr $i % 2`
 if [ $resto == 0 ]
 then
     echo "$i es par"
     contadorpar=$(($contadorpar+1))
else
     echo "$i es impar"
     contadorimpar=$(($contadorimpar+1))
fi
done
echo "Numeros pares: $contadorpar"
echo "Numeros impares: $contadorimpar"