clc; clear all; close all
img=imread('4.2.03.tiff');
r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);
figure;
subplot(2,2,1), subimage(img);
subplot(2,2,2), subimage(r);
subplot(2,2,3), subimage(g);
subplot(2,2,4), subimage(b);
print ('-dpng','rgb_mosaic.png');
%
img_ycbcr=rgb2ycbcr(img);
Y = img(:,:,1);
Cb = img(:,:,2);
Cr = img(:,:,3);
figure;
subplot(2,2,1), subimage(img);
subplot(2,2,2), subimage(Y);
subplot(2,2,3), subimage(Cb);
subplot(2,2,4), subimage(Cr);
print ('-dpng','YCbCr_mosaic.png');
%
img_lab=RGB2Lab(img);
L = img(:,:,1);
a = img(:,:,2);
b = img(:,:,3);
figure;
subplot(2,2,1), subimage(img);
subplot(2,2,2), subimage(L);
subplot(2,2,3), subimage(a);
subplot(2,2,4), subimage(b);
print ('-dpng','Lab_mosaic.png');
%
img_hsv=rgb2hsv(img);
h = img(:,:,1);
s = img(:,:,2);
v = img(:,:,3);
figure;
subplot(2,2,1), subimage(img);
subplot(2,2,2), subimage(h);
subplot(2,2,3), subimage(s);
subplot(2,2,4), subimage(v);
print ('-dpng','hsv_mosaic.png');
