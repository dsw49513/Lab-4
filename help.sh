#!/bin/bash

if [ "$#" -eq 1 ] && [ "$1" == "--help" ]; then
  echo "Dostepne opcje:"
  echo "--logs, -l, - <liczba> : utworz automatucznie okreslona liczbe plikow"
  echo "--date, -d, - : wyswietla date."
  echo "--help, -h, - : wyswietla dostepne opcje"
  echo "--error, -e : Tworzy pliki errorx/errorx.txt"
  exit 0
fi

echo "Użyj --help"
exit 1
