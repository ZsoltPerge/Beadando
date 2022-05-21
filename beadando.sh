#!/bin/bash


while getopts ":abcde"  opt; do
	case $opt in
		a)	
			echo "Add meg az elso szamot"
			read x
			echo "Add meg a második számot"
			read y
			sum=$(($x+$y))
			echo "Az eredmeny $sum"
			;;
		b)	
			echo "Add meg az elso szamot"
			read x
			echo "Add meg a második számot"
			read y
			dec=$(($x-$y))
			echo "Az eredmeny $dec"
			;;
		c)

			echo "Add meg az url-t"
			read url
			curl "$url"  > adatoknetrol.txt
			;;
		d)
			echo "Add meg a keresett szót"
			read szo
			echo "Keresek..."
			echo "$szo"
			grep -c $szo adatoknetrol.txt 
			;;
		e)
			echo "Add meg a keresett szót:"
			read szo
			echo "Keresek..."
			grep $szo adatoknetrol.txt
			;;
	esac
done
