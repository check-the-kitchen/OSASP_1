#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Script need 2 dirrectories"
else
	if [[ -d $1 ]]&&[[ -d $2 ]]
	then
		for i in $1/*
		do
			for j in $2/*
			do
				if [[ -f $i ]]&&[[ -f $j ]];then
					cmp -s $i $j && echo "$i == $j"
				fi
			done
		done
		if [[ $i ]]&&[[ $j ]]; then
			echo "Viewed files: $(( `find $1 -maxdepth 1 -type f | wc -l`))"
		else
			echo "Viewed files: $(( `find $1 -maxdepth 1 -type f | wc -l`+`find $2 -maxdepth 1 -type f | wc -l` ))"
		fi
	fi
fi
