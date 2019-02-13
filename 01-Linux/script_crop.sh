
#!/bin/bash

cd ~/ComputerVision/IBIO4490-Carlos/
rm -r resized_images
mkdir resized_images
cd resized_images/
mkdir train
mkdir test
mkdir val

cd ~/ComputerVision/IBIO4490-Carlos/BSR/BSDS500/data/images/train/

mogrify -path ~/ComputerVision/IBIO4490-Carlos/resized_images/train/ -format "Resized.jpg" -resize 256x256 *.jpg

cd ~/ComputerVision/IBIO4490-Carlos/BSR/BSDS500/data/images/test/

mogrify -path ~/ComputerVision/IBIO4490-Carlos/resized_images/test/ -format "Resized.jpg" -resize 256x256 *.jpg

cd ~/ComputerVision/IBIO4490-Carlos/BSR/BSDS500/data/images/val/

mogrify -path ~/ComputerVision/IBIO4490-Carlos/resized_images/val/ -format "Resized.jpg" -resize 256x256 *.jpg

