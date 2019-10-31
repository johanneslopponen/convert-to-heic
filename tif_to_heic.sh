#!/bin/bash

#declare variables
originals="*.tif"
count=0
count2=0

#convert tif's to jpg's
for file in $originals
do convert $file converted-image-$count2.jpg
echo "image, $count"
((count++))
((count2++))
done
echo "continuing"

#convert jpg's to heic file's with decoder set to ultrafast
jpg_originals="*.jpg"
count3=0
for file in $jpg_originals
do heif-enc -L -p preset=ultrafast $file
echo "Image $count3, done"
((count3++))
done

#remove jpg's
rm *.jpg
echo "Done!"
sleep 1s
