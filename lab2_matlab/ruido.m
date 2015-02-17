%% Algoritmo ruido
%% Limpieza
clc
clear all; close all
%% Subir 5 imágenes
im1=imread('4.1.03.tiff');
im2=imread('4.1.04.tiff');
im3=imread('4.1.05.tiff');
im4=imread('4.1.06.tiff');
im5=imread('4.1.07.tiff');
%% Aplicar Ruido - im1
im1_gauss=imnoise(im1, 'gaussian', 1, 0.5);
im1_saltpepper=imnoise(im1, 'salt & pepper', 0.05);
im1_speckle=imnoise(im1,'speckle', 0.05);
% imwrite(im1_gauss, 'im.jpg');
tojpg(im1_saltpepper);
tojpg(im1speckle);
figure
subplot(2,2,1); imshow(im1); title('img original');
subplot(2,2,2); imshow(im1_gauss); title('ruido gauss');
subplot(2,2,3); imshow(im1_saltpepper); title('ruido salt & peppers');
subplot(2,2,4); imshow(im1_speckle); title('ruido multiplicativo');
%% Aplicar Ruido - im2
im2_gauss=imnoise(im2, 'gaussian', 1, 0.5);
im2_saltpepper=imnoise(im2, 'salt & pepper', 0.05);
im2_speckle=imnoise(im2,'speckle', 0.05);
figure
subplot(2,2,1); imshow(im2); title('img original');
subplot(2,2,2); imshow(im2_gauss); title('ruido gauss');
subplot(2,2,3); imshow(im2_saltpepper); title('ruido salt & peppers');
subplot(2,2,4); imshow(im2_speckle); title('ruido multiplicativo');
%% Aplicar Ruido - im3
im3_gauss=imnoise(im3, 'gaussian', 1, 0.5);
im3_saltpepper=imnoise(im3, 'salt & pepper', 0.05);
im3_speckle=imnoise(im3,'speckle', 0.05);
figure
subplot(2,2,1); imshow(im3); title('img original');
subplot(2,2,2); imshow(im3_gauss); title('ruido gauss');
subplot(2,2,3); imshow(im3_saltpepper); title('ruido salt & peppers');
subplot(2,2,4); imshow(im3_speckle); title('ruido multiplicativo');
%% Aplicar Ruido - im4
im4_gauss=imnoise(im4, 'gaussian', 1, 0.5);
im4_saltpepper=imnoise(im4, 'salt & pepper', 0.05);
im4_speckle=imnoise(im4,'speckle', 0.05);
figure
subplot(2,2,1); imshow(im4); title('img original');
subplot(2,2,2); imshow(im4_gauss); title('ruido gauss');
subplot(2,2,3); imshow(im4_saltpepper); title('ruido salt & peppers');
subplot(2,2,4); imshow(im4_speckle); title('ruido multiplicativo');
%% Aplicar Ruido - im5
im5_gauss=imnoise(im5, 'gaussian', 1, 0.5);
im5_saltpepper=imnoise(im5, 'salt & pepper', 0.05);
im5_speckle=imnoise(im5,'speckle', 0.05);
figure
subplot(2,2,1); imshow(im5); title('img original');
subplot(2,2,2); imshow(im5_gauss); title('ruido gauss');
subplot(2,2,3); imshow(im5_saltpepper); title('ruido salt & peppers');
subplot(2,2,4); imshow(im5_speckle); title('ruido multiplicativo');
