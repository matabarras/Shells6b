parametro=$1
cantidadficheros=`ls -l ${parametro} | grep .txt | wc -l`
echo "Se han borrado $cantidadficheros ficheros de texto"
