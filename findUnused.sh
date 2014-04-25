# Hillary Herman            #
# CS 210 - Spring '14       #
# Project 1 - April 3, 2014 #
#############################


# Creates a list of text files in current directory.
fileList=$(find . | grep -E ".+(txt|json|xml)")

# Creates a list of image files in current directory.
imageFilelist=$(find . | grep -E ".+(jpg|png|gif|jpeg)")

# Goes through the list of images in file.
for item in $imageFilelist
do
    # Determines if the image is in the list of files.
    grep -R -q $(basename $item) $fileList
    
    # If the current image is not found, path of the image is printed.
     if [ $? -eq 1 ]
     then
         echo $item
     fi
done
