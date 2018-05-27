#!/bin/bash
#e03_JMC.sh

OPCION=0
while [ $OPCION != 5 ]; do 
echo "Elija una opción del menú"
echo "   1- Suma"
echo "   2- Resta"
echo "   3- Multiplicación"
echo "   4- División"
echo "   5- Acabar"
read OPCION
   case $OPCION in
     1) echo "Diga el primer número"
	read numeroUno
	echo "Diga el segundo número"
	read numeroDos
	resultado=$[ $numeroUno + $numeroDos ]
	echo "El resultado de $numeroUno + $numeroDos es $resultado"
	echo "para continuar pulse intro"
	read foo
	clear;;
     2) echo "Diga el primer número"
	read numeroUno
	echo "Diga el segundo número"
	read numeroDos
	resultado=$[ $numeroUno - $numeroDos ]
	echo "El resultado de $numeroUno - $numeroDos es $resultado"
	echo "para continuar pulse intro"
	read foo
	clear;;
     3) echo "Diga el primer número"
	read numeroUno
	echo "Diga el segundo número"
	read numeroDos
	resultado=$[ $numeroUno * $numeroDos ]
	echo "El resultado de $numeroUno * $numeroDos es $resultado"
	echo "para continuar pulse intro"
	read foo
	clear;;
     4) echo "Diga el primer número"
	read numeroUno
	echo "Diga el segundo número"
	read numeroDos
	resultado=$[ $numeroUno / $numeroDos ]
	echo "El resultado de $numeroUno / $numeroDos es $resultado"
	echo "para continuar pulse intro"
	read foo
	clear;;
     5) echo "FIN"
	clear;;
     *) echo "Elija un opción entre 1 y 5, el $OPCION no es opción adecuada";;
    esac
    done

#Jesús Martín Castro
