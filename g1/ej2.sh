#! /bin/bash

impar=0;
par=0;

while read linea; do 

    if  [ $((linea % 2)) == 0 ]; then 

        echo $linea >> par.txt
        ((par++));
    else

        echo $linea >> impar.txt
        ((impar++));
    fi

done < ./../ficheros_scripts/numeros.txt

echo "Hay un total de $par numeros pares y $impar numeros impares"
