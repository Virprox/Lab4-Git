#!/bin/bash

if [ "$1" == "--date" ]; then
    date
elif [ "$1" == "--logs" ] && [ -z "$2" ]; then
    for i in {1..100}
    do
        echo "Nazwa pliku: log$i.txt, Skrypt: $0, Data: $(date)" > log$i.txt
    done
elif [ "$1" == "--logs" ] && [ -n "$2" ]; then
    for i in $(seq 1 $2)
    do
        echo "Nazwa pliku: log$i.txt, Skrypt: $0, Data: $(date)" > log$i.txt
    done
fi
