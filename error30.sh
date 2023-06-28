#!/bin/bash

if [ "$#" -eq 2 ] && ([ "$1" == "--error" ] || "$1" == "-e" ]); then
  if ! [[ $2 =~ ^[0-9]+$ ]]; then
    echo "bledna liczba plikow, ustawiam wartosc na 100"
    files=100
  else
    files=$2
  fi
  for ((i=1; i<=$files; i++)); do
    directory="error$i"
    file="$directory/error$i.txt"

    mkdir -p "$directory"

    echo "Nazwa pliku: $file" > "$file"
    echo "Nazwa skryptu: error30.sh" >> "$file"
    echo "Data: $(date)" >> "$file"
  done

  echo "Utworzono $files plików errorx/errorx.txt."
  exit 0
fi

echo "Użyj --error lub -e"
exit 1




