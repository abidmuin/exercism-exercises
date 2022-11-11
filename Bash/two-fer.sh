# https://exercism.org/tracks/bash/exercises/two-fer

#!/usr/bin/env bash

main()
{
    echo "One for ${1:-you}, one for me."
}

main "$@"

# FOR MULTIPLE PARAMS
# main "$*"