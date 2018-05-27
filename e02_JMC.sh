#!/bin/bash
#e02_JMC.sh

NUM=1
if [ $# -eq 0 ]; then #se comprueba si están especificados los dos parámetros y da un ejemplo de como hacerlo en caso de que no se especifiquen
	echo "Ha de especificar junto a la ejecución del programa el número de archivos a crear y el si desea crear un directorio ejemplo: "
	echo "./e02_JMC.sh 2 prueba"
elif [ $# -eq 1  ]; then #aquí crea el archivo o  archivos directamente en el directorio donde se encuentra actualmente
	if [ $1 -ge 1 ]; then #comprueba si el número de archivos especificados para crear es mayor que 1
		while [ $NUM -le $1 ]; do #bucle para crear tantos archivos como el usuario haya especificado
			if [ $NUM -le 9 ]; then
				touch file_0$NUM.txt
			elif [ $NUM -ge 10 ]; then
				touch file_$NUM.txt
			fi
			let NUM=$NUM+1
		done
	elif [ $1 -le 1]; then #en caso de que no haya especificado número de archivos
		echo "Ha de especificar un número de ficheros"
	fi
else
	if [ -d $2 ]; then #si especifica un directorio que ya existe
		echo "El directorio ya existe"
		cd $2
		if [ $1 -ge 1 ]; then

  			while [ $NUM -le $1 ]; do #bucle para crear tantos archivos como el usuario haya especificado
			if [ $NUM -le 9 ]; then
				touch file_0$NUM.txt
			elif [ $NUM -ge 10 ]; then
				touch file_$NUM.txt
			fi
			let NUM=$NUM+1
		done

		elif [ $1 -le 1 ]; then

  			echo "Ha de especificar un número de ficheros"

		fi
	else #en caso de que no exista directorio especificado, lo crea tanto los archicos como el directorio.
		mkdir $2
		cd $2
		if [ $1 -ge 1 ]; then
			while [ $NUM -le $1 ]; do #bucle para crear tantos archivos como el usuario haya especificado
			if [ $NUM -le 9 ]; then
				touch file_0$NUM.txt
			elif [ $NUM -ge 10 ]; then
				touch file_$NUM.txt
			fi
			let NUM=$NUM+1
		done
		elif [ $1 -le 1 ]; then
			echo "Ha de especificar un número de ficheros"
		fi
	fi
fi

#Jesús Martín Castro
