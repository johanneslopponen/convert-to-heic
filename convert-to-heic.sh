#!/bin/bash

#declare variables
tif_originals="*.tif"
tiff_originals="*.tiff"
count=0
count1=0

#convert tiff's to jpg's
for file in $tiff_originals
do convert $file converted-image-$count.jpg
((count++))
done

#convert tif's to jpg's
for file in $tif_originals
do convert $file converted-image-$count.jpg
((count++))
done

#convert jpg's to heic file's with decoder set to ultrafast
jpg_originals="*.jpg"
count3=0
for file in $jpg_originals
do heif-enc -L -p preset=ultrafast $file
echo "Image $count3, done"
((count3++))
done

#convert jpeg's to heic file's with decoder set to ultrafast
jpeg_originals="*.jpeg"
for file2 in $jpeg_originals
do heif-enc -L -p preset=ultrafast $file2
echo "Image $count3, done"
((count3++))
done

#remove jpg's and tifs
rm *.jpg
rm *.jpeg
rm *.tif
rm *.tiff
echo "Done!, Shutting down!"
sleep 1s
