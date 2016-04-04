#!/bin/bash

fortunes="effective_modern_cpp effective_cpp effective_stl the_pragmatic_programmer"

for it in $fortunes
do
  strfile -c % $it $it.dat
  sudo cp $it /usr/share/games/fortunes
  sudo cp $it.dat /usr/share/games/fortunes
done

echo "fortune $fortunes" >> ~/.bashrc
