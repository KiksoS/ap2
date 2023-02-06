#! /bin/bash

while read linea; do
    
    mkdir $linea;

    for ((i=1; i<=$1; i++)); do

        mkdir ./$linea/personal$i;
  
    done 
done < ./../ficheros_scripts/nombres.txt