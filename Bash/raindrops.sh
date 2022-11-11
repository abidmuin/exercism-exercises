#!/usr/bin/env bash

# https://exercism.org/tracks/bash/exercises/raindrops/

result=""

main()
{

	# https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Conditional-Constructs

    (($1%3)) || result+="Pling"
    (($1%5)) || result+="Plang"
    (($1%7)) || result+="Plong"

    echo ${result:-$1}
}

main "$@"