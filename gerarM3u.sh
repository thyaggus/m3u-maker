
#!/bin/bash

find $1 -type d |
while read subdir
do
  rm -f "$subdir"/*.m3u
  for filename in "$subdir"/*.mp4;
  do
    echo "$(basename $1)/${subdir##*/}/${filename##*/}" >> /"$subdir"/"${subdir##*/}.m3u"
  done
done 