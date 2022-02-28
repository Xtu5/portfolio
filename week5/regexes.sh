#!/bin/bash





echo "Please select one option to search for:
    1. Sed Statements
    2. Lines starting with 'm'
    3. Lines containing a 3 digit number
    4. Echo statements with 3 words or more
    5. Good ideas for passwords"

read opt

if [ $opt = 1 ]; then

    grep -r sed ~/scripts/portfolio/

elif [ $opt = 2 ]; then

    grep -r "^m" ~/scripts/portfolio/

elif [ $opt = 3 ]; then
    grep -r \d\d\d ~/scripts/portfolio/

elif [ $opt = 4 ]; then
    grep -r '^echo .*\\w\w\w.*' ~/scripts/portfolio/

elif [ $opt = 5 ]; then
    grep -r '' ~/scripts/portfolio/

fi

#REFERENCE/ACKNOWLEDGEMENT
#code direction provided by ECU