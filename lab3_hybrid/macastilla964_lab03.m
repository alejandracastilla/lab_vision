%% Lab03- ImgHíbridas
%% Limpieza
clc
clear all
close all
%% Carga de imágenes
% im1= imread('einstein.bmp');
% im2= imread('marilyn.bmp');
im1= imread('im1.jpg');
im2= imread('im2.jpg');
im1=rgb2gray(im1);
im2=rgb2gray(im2);
%     figure
%     subplot(1,2,1); imshow(im1)
%     subplot(1,2,2); imshow(im2)
%% Filtros -# Filtering (% Y = X - f(X))
fil= fspecial('gaussian', 40, 15); %20 45 eins marilyn
% Low pass
im1_low= imfilter(im1, fil);
im2_low= imfilter(im2, fil);
% High pass
im2_high= im2 - im2_low;
%% Transformadas -# Transform of
% original images
fft_im1 = fft2(im1);
fft_im2 = fft2(im2);
% the filter
fft_fil = fft2(fil);
%  filtered images
fft_im1_low = fft2(im1_low);
fft_im2_high = fft2(im2_high);
dct_im1_low = dct2(im1_low);
dct_im2_high = dct2(im2_high);
%% -# Summing the images
% H = f1(X1) + (X2 - f2(X2) )
H= im1_low + im2_high;
%% -# Visualization
%% fft & dct
figure
suptitle('transformadas fft & dct');
subplot(2,2,1);  imagesc( log(abs(dct_im1_low))); title('fft im1 low');
subplot(2,2,2); imagesc( log(abs((dct_im1_low)))); title('dct im1 low');
subplot(2,2,3); imagesc( log(abs(fft_im2_high))); title('fft im2 high');
subplot(2,2,4); imagesc( log(abs(dct_im2_high))); title('dct im2 high');

%% img híbrida
figure
imshow(H)
subplot(2,2,1), imshow(im1)
title('Origial im1')
subplot(2,2,2), imshow(im2)
title('Original im2')
subplot(2,2,3), imshow(im1_low)
title('im1 con filtro pasa bajas')
subplot(2,2,4), imshow(im2_high)
title('im2 con filtro pasa altas')
%% guardar
% Write on disk the hybrid image
imwrite(H, 'hybrid.png');
%% PIRAMIDE
figure
suptitle('Pirámide')
subplot(2,3,1), imshow(H), axis([0 500 0 500]), title('Nivel 1')
subplot(2,3,2), imshow(imresize(H,0.75)), axis([0 500 0 500]), title('Nivel 2')
subplot(2,3,3), imshow(imresize(H,0.5)), axis([0 500 0 500]), title('Nivel 3')
subplot(2,3,4), imshow(imresize(H,0.3)), axis([0 500 0 500]), title('Nivel 4')
subplot(2,3,5), imshow(imresize(H,0.2)), axis([0 500 0 500]), title('Nivel 5')
subplot(2,3,6), imshow(imresize(H,0.1)), axis([0 500 0 500]), title('Nivel 6')
