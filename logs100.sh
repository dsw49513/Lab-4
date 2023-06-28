#!/bin/bash

if [ "$#" -eq 1 ] && ([ "$1" == "--logs" ]); then
  for ((x=1; x<=100; x++))
  do
    filename="log${x}.txt"
    script_name="logs100.sh"
    current_date=$(date +"%Y-%m-%d")

    echo "Nazwa pliku: $filename" >> "$filename"
    echo "Nazwa skryptu: $script_name" >> "$filename"
    echo "Data: $current_date" >> "$filename"

    echo "Utworzono plik: $filename"
  done

  exit 0
fi

echo "Użyj --logs"
exit 1
