#!/bin/bash

if [ "$#" -eq 1 ] && [ "$1" == "--init" ]; then
  git clone <adres_repozytorium> .

  export PATH="$PATH:$(pwd)"

  echo "Repozytorium zostało sklonowane katalogu."
  echo "Ściezka do repozytorium zostala dodana PATH."

  exit 0
fi

echo "--init"
exit 1
