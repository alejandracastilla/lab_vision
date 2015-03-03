function rta = Kmeans_lab04( Im, n_clusters )
[M,N,z]= size(Im);
M3=reshape(Im(:), [], 3);
M3=double(M3);
% n_clusters= 4;
KmeanMATLAB=kmeans(M3,n_clusters);
MMATLAB=[KmeanMATLAB,KmeanMATLAB,KmeanMATLAB];
MMATLAB=reshape(MMATLAB,[M,N,z]);
figure
imshow(uint8(MMATLAB*255/(max(KmeanMATLAB))))
title('Imagen segmentada por Kmeans');
end

