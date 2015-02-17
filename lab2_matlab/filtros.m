%% Blur - Average and gaussian filters
%% Subir 5 imágenes
im1=imread('4.1.03.tiff');
%% Aplicar Ruido - im1
im1_gauss=imnoise(im1, 'gaussian', 1, 0.5);
im1_saltpepper=imnoise(im1, 'salt & pepper', 0.05);
%% Aplicar filtros
mean= fspecial('average', [5 5]);
gauss= fspecial('gaussian', [5 5], 0.5);
im1_gauss_meanfilter= imfilter(im1_gauss,mean);
im1_gauss_gaussfilter=imfilter(im1_gauss,gauss);
im1_saltpepper_meanfilter= imfilter(im1_saltpepper,mean);
im1_saltpepper_gaussfilter=imfilter(im1_saltpepper,gauss);
subplot(2,2,1); imshow(im1_gauss_meanfilter); title('im ruido gauss filtro promedio');
subplot(2,2,2); imshow(im1_gauss_gaussfilter); title('im ruido gauss filtro gauss');
subplot(2,2,3); imshow(im1_saltpepper_meanfilter); title('im ruido saltpepper filtro promedio');
subplot(2,2,4); imshow(im1_saltpepper_gaussfilter); title('im ruido saltpepper filtro gauss');
