function rta = GMM_lab04( Im, n_clusters )
%% GM matlab
[M,N,z]= size(Im);
M3=reshape(Im(:), [], 3);
M3=double(M3);
% n_clusters= 4;
GMatlab=gmdistribution.fit(M3,n_clusters,'Regularize',0.5);
GMMatlab=cluster(GMatlab,M3);
GMMATLAB=[GMMatlab,GMMatlab,GMMatlab];
GMMATLAB=reshape(GMMATLAB,[M,N,z]);
figure
imshow(uint8(GMMATLAB*255./(max(max(max(((GMMATLAB))))))))
title('Imagen segmentada por GMM');
end

