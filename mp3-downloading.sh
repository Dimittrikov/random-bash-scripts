#! /usr/bin/bash

filename=$1
while read line; do
link=$(ytfzf -a -L $line)
youtube-dl --extract-audio --audio-format mp3 $link

done < $filename
