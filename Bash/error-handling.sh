#!/usr/bin/env bash

# https://exercism.org/tracks/bash/exercises/error-handling/

main()
{
	if [[ "$#" -eq 1 ]]; then
		echo "Hello, $1"
    else
		echo "Usage: error_handling.sh <person>"
        return 1
	fi
}

main "$@"