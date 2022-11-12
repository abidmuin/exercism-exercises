#!/usr/bin/env bash

# https://exercism.org/tracks/bash/exercises/hamming/

main()
{
	if [ "$#" -le 1 ]; then
		echo "Usage: hamming.sh <string1> <string2>"
		exit 1
    elif [ "$1" == "$2" ]; then
        echo "0"
    elif [ "${#1}" == "${#2}" ]; then
		first_str=$1
		second_str=$2		
		str_len="${#1}"
		diff_count=0
		for (( i=0; i<str_len; i++ )); do
			if [ "${first_str:$i:1}" != "${second_str:$i:1}" ]; then
				((diff_count++))
			fi
		done
		echo "$diff_count"	

    elif [ "${#1}" != "${#2}" ]; then
		echo "strands must be of equal length"
		exit 1
	fi
}

main "$@"