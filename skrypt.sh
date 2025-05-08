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
elif [ "$1" == "--help" ]; then
    echo "Dostępne opcje:"
    echo "--date : Wyświetla dzisiejszą datę"
    echo "--logs : Tworzy 100 plików logx.txt"
    echo "--logs <liczba> : Tworzy podaną liczbę plików logx.txt"
    echo "--help : Wyświetla pomoc"
fi
