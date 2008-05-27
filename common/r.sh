#/bin/bash

if [ -f ./run.sh ]
then
    ./run.sh
else
    make &&
    ./a.out
fi
    
