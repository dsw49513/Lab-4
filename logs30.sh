#!/bin/bash

if [ "$#" -eq 2 ] && [ "$1" == "--logs" ]; then
  num_files=$2

  for ((x=1; x<=num_files; x++))
  do
    filename="log${x}.txt"
    script_name="logs30.sh"
    current_date=$(date +"%Y-%m-%d")

    echo "Nazwa pliku: $filename" >> "$filename"
    echo "Nazwa skryptu: $script_name" >> "$filename"
    echo "Data: $current_date" >> "$filename"

    echo "Utworzono plik: $filename"
  done

  exit 0
fi

echo "--logs 30"
exit 1
