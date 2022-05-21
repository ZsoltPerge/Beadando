#!/bin/bash
	
while getopts a:b:c:d  opt; do
	case $opt in
		a)
			
			echo "Teszt" > test.txt
			
			;;
		b)
			cat test.txt
			;;	
		c)
			link=$OPTARG
			curl "$link"  >adatoknetrol.txt
			;;
		d)
			szo=$OPTARG
			grep $szo adatokanetrol.txt 
			;;
	esac
done		
