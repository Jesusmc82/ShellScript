#!/bin/bash
#e01_JMC.sh

echo "¿Cuál es su edad?"
read EDAD

if [ $EDAD -ge 18 ]; then #-ge mayor o igual que
 echo "Acceso permitido."
elif [ $EDAD -le 17 ]; then #-le menor o igual que
 echo "Lo siento, no tiene acceso."
fi

#Jesús Martín Castro
