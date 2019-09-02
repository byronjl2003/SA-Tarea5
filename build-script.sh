#!/bin/bash
echo "HOLA"
input="/home/bj/repos/SA-Tarea5/version"

while IFS= read -r line
do
    #VAMOS A TAGUEAR CONSTRUIR LAS IMAGES Y A TAGUEARLAS
    echo "$line"
    docker build -t byronjl2003/sa-esb:${line}  ./ESB
    docker build -t byronjl2003/sa-ubicacion:${line}  ./Ubicacion
    docker build -t byronjl2003/sa-cliente:${line}  ./Cliente
    docker build -t byronjl2003/sa-piloto:${line}  ./Piloto
    cat ~/passdocker.txt | docker login --username byronjl2003 --password-stdin

done < "$input"