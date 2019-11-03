#!/usr/bin/env bash

heic_files="*.heic"
count=1

for file in $heic_files
do heif-convert -q 100 $file converted-$count.jpg
((count++))
done