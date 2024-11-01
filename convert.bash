#!/bin/bash
# Author:
# Date:
# Purpose: To convert all .jpg files in the current directory to .png.
# Usage: ./convert.bash
#

# Populate the array images with all the filenames of all .jpg files in the current directory (without their extension).
images=($(ls | grep "jpg$" | sed 's/\.jpg/ /'))

# For each filename in the array images
for file in "${images[@]}"; do

    # Convert the .jpg file to a .png file
	convert $file.jpg $file.png

    # Remove the .jpg file
	rm $i.jpg

# End for
done

# Indicate that the conversion is complete
echo "Image conversion completed."