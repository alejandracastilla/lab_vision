clc; clear all; close all
I0=imread('5.1.12.tiff');
I1 = impyramid(I0, 'reduce');
I2 = impyramid(I1, 'reduce');
I3 = impyramid(I2, 'reduce');
I4 = impyramid(I3, 'reduce');
  
imshow(I0)
figure, imshow(I1)
figure, imshow(I2)
figure, imshow(I3)
figure, imshow(I4)
