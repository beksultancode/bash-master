#!/bin/bash
file=test.txt
lines=$(wc -l < $file)

if [[ $lines -lt 10 ]]; then
  exit 1
else
  counter=0;
  while read -r line; do
    if [[ $counter == 9 ]]; then
      echo $line
    fi
    ((counter++))
  done <$file
fi

exit 1

while read -r line; do
  echo "$line"
done <test.txt

exit 1

for i in {5..50..5}; do
    echo "Welcome $i"
done<./test.txt

exit 1

for ((i = 0; i < 100; i++)); do
    echo "$i"
done