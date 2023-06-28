#!/bin/bash

if [ "$#" -eq 1 ] && [ "$1" == "--date" ]; then
  current_date=$(date +"%Y-%m-%d")
  echo "Dzisiejsza data: $current_date"
  exit 0
fi

echo "Użyj --date"
exit 1
