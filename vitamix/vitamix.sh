#!/bin/bash

black=$(./black.sh)
red=$(./red.sh)

if [[ $black == *stock* ]]
then
  echo
else
  echo "It is in stock omg"
  osascript -e 'display notification "Black Vitamix 750 in Stock" with title "Black Vitamix"'
fi

if [[ $red == *stock* ]]
then
  echo
else
  echo "It is in stock omg"
  osascript -e 'display notification "Red Vitamix 750 in Stock" with title "Red Vitamix"'
fi

