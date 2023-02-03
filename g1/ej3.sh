#! /bin/bash

win=0;
pro1=0;
linx=0;
pro2=0;

while read user os value; do

    if [ "$os" == "Windows" ];then
        
        ((win++));
        ((pro1 += value));
    else
        ((linx++));
        ((pro2 += value));
    fi

done < ./../ficheros_scripts/listado.txt

echo "Windows -> $win $pro1";
echo "Linux -> $linx $pro2";
