
#!/bin/bash

find $1 -type d |
while read subdir
do
  rm -f "$subdir"/*.m3u
  for filename in "$subdir"/*.mp4;
  do
    echo "${filename##*/}" >> /"$subdir"/"${subdir##*/}.m3u"
    echo "$(basename $1)/${subdir##*/}/${filename##*/}" >>  "$1/${subdir##*/}.m3u" 
  done
done