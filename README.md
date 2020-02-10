convert-to-heic
===========
This script converts tif and jpg images into images using the [High Efficiency Image File Format](https://en.wikipedia.org/wiki/High_Efficiency_Image_File_Format) in the heic container.
This script uses libheif for converting from jpg to heic.
It uses imagemagick for conversion from tif to jpg.

> The script can convert from tif to heic but it isn't converted straight from tif to heic. It's instead firs converted into a jpg and then converted into heic. This should not affect image quality that much because the conversion from jpg to heic is lossless.

The only dependencies are libheif, libde265 and imagemagick.

Usage: Put the script in the folder that your tif and or jpg files are located in and run it.

## Warning: Use copies of your images in an empty directory because the script removes jpg's and tif's, it only saves the heic files.
