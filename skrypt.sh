#!/bin/bash

if [ "$1" == "--date" ] || [ "$1" == "-d" ]; then
    date
elif [ "$1" == "--logs" ] || [ "$1" == "-l" ] && [ -z "$2" ]; then
    for i in {1..100}
    do
        echo "Nazwa pliku: log$i.txt, Skrypt: $0, Data: $(date)" > log$i.txt
    done
elif [ "$1" == "--logs" ] || [ "$1" == "-l" ] && [ -n "$2" ]; then
    for i in $(seq 1 $2)
    do
        echo "Nazwa pliku: log$i.txt, Skrypt: $0, Data: $(date)" > log$i.txt
    done
elif [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    echo "Dostępne opcje:"
    echo "--date, -d : Wyświetla dzisiejszą datę"
    echo "--logs, -l : Tworzy 100 plików logx.txt"
    echo "--logs <liczba>, -l <liczba> : Tworzy podaną liczbę plików logx.txt"
    echo "--help, -h : Wyświetla pomoc"
    echo "--init : Klonuje repozytorium i dodaje ścieżkę do PATH"
    echo "--error, -e : Tworzy 100 plików errorx/errorx.txt"
    echo "--error <liczba>, -e <liczba> : Tworzy podaną liczbę plików errorx/errorx.txt"
elif [ "$1" == "--init" ]; then
    git clone https://github.com/Virprox/Lab4-Git.git
    echo "export PATH=\$PATH:$(pwd)/Lab4-Git" >> ~/.bashrc
    source ~/.bashrc
elif [ "$1" == "--error" ] || [ "$1" == "-e" ] && [ -z "$2" ]; then
    for i in {1..100}
    do
        mkdir -p error$i
        echo "Nazwa pliku: error$i.txt, Skrypt: $0, Data: $(date)" > error$i/error$i.txt
    done
elif [ "$1" == "--error" ] || [ "$1" == "-e" ] && [ -n "$2" ]; then
    for i in $(seq 1 $2)
    do
        mkdir -p error$i
        echo "Nazwa pliku: error$i.txt, Skrypt: $0, Data: $(date)" > error$i/error$i.txt
    done
fi
