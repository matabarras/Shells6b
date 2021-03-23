parametro=$1
cantidadficheros=`ls -l ${parametro} | grep .txt | wc -l`

if [ -d $parametro ]
then
    echo "Se han borrado $cantidadficheros ficheros de texto"
else
    echo "El directorio $parametro no existe"
fi

