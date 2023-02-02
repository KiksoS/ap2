#! /bin/bash

echo "Dime cuantos sub directorios quieres: ";
read subdir;

while read linea; do
    
    mkdir $linea;

    for ((i=1; i<=$subdir; i++)); do

        mkdir ./$linea/personal$i;
  
    done 
done < ./../ficheros_scripts/nombres.txt