#! /bin/bash

condition=1

while [ $condition == 1 ]
  do
    input="USER INPUT"
    read -p "Type string to randomize and hit enter. Type exit to quit. > " input
    if [ "$input" == "exit" ]; then
      condition=0
    else
      echo $input | sed 's/./&\n/g' | shuf | tr -d "\n"
      echo
    fi
  done