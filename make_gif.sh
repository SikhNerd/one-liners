#!/bin/bash

echo "$(tput setaf 5)########## File to convert is $1 ##########$(tput sgr0)"
echo "$(tput setaf 3)########## Converting to gif ##########$(tput sgr0)"
ffmpeg -v info -i $1 -r 10 $1.gif
echo "$(tput setaf 3)########## Done giffing ##########$(tput sgr0)"
echo "$(tput setaf 3)########## Optimizing ##########$(tput sgr0)"
convert -layers Optimize $1.gif $1_final.gif
echo "$(tput setaf 3)########## Done Optimizing ##########$(tput sgr0)"
echo "$(tput setaf 3)########## Deleting Un-optmizied Gif ##########$(tput sgr0)"
rm $1.gif
echo "$(tput setaf 2)########## Done ##########$(tput sgr0)"
