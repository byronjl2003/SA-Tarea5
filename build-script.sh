#!/bin/bash
echo "HOLA"
input="version"

while IFS= read -r line
do
    #VAMOS A TAGUEAR CONSTRUIR LAS IMAGES Y A TAGUEARLAS
    echo "$line"
    docker build -t byronjl2003/sa-esb:${line}  ./ESB
    docker build -t byronjl2003/sa-ubicacion:${line}  ./Ubicacion
    docker build -t byronjl2003/sa-cliente:${line}  ./Cliente
    docker build -t byronjl2003/sa-piloto:${line}  ./Piloto
    cat ~/passdocker.txt | docker login --username byronjl2003 --password-stdin
    docker push byronjl2003/sa-esb:${line}
    docker push byronjl2003/sa-ubicacion:${line}
    docker push byronjl2003/sa-cliente:${line}
    docker push byronjl2003/sa-piloto:${line} 

done < "$input"