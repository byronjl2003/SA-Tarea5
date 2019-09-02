#!/bin/bash
echo "HOLA"
input="/home/bj/repos/SA-Tarea5/version"
echo "$input"
while IFS= read -r line
do
    #VAMOS A TAGUEAR CONSTRUIR LAS IMAGES Y A TAGUEARLAS
    echo "$line"
done < "$input"