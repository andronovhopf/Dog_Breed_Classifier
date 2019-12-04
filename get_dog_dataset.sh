#!/bin/bash

# Download the dogs
wget http://vision.stanford.edu/aditya86/ImageNetDogs/images.tar

tar -xczf images.tar

# Keep only the breeds we care about. Get the first 100 images in those folders.
mkdir data

cd Images/n02088094-Afghan_hound
cp `ls | head -100` ../../data      

cd ../n02085936-Maltese_dog       
cp `ls | head -100` ../../data   

# Remove all the other dog breed folders
cd ..
shopt -s extglob
#rm -rf !(n02085936-Maltese_dog|n02088094-Afghan_hound) 
rm ../images.tar
shopt -u extglob