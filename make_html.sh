#!/bin/bash

echo "$(tput setaf 5)########## File to convert is $1 ##########$(tput sgr0)"
echo "$(tput setaf 3)########## Doing first pass ##########$(tput sgr0)"
ffmpeg -i $1 -pass 1 -codec:v libvpx -b:v 2000k -codec:a libvorbis -b:a 100k -f webm -y /dev/null
echo "$(tput setaf 3)########## Done with first pass ##########$(tput sgr0)"
echo "$(tput setaf 3)########## Doing Second pass ##########$(tput sgr0)"
ffmpeg -i $1 -pass 2 -codec:v libvpx -b:v 2000k -codec:a libvorbis -b:a 100k -y $1.webm
echo "$(tput setaf 3)########## Done Optimizing ##########$(tput sgr0)"
echo "$(tput setaf 3)########## Deleting ffmpeg log ##########$(tput sgr0)"
rm ffmpeg2pass-0.log
echo "$(tput setaf 2)########## Done ##########$(tput sgr0)"
