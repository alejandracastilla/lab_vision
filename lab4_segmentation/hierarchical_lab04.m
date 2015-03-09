function rta = hierarchical_lab04( Im, n_clusters )
Im2 = impyramid(Im, 'reduce');
Im = impyramid(Im2, 'reduce');
[M,N,z]= size(Im);
M3=reshape(Im(:), [], 3);
M3=double(M3);
dist = pdist(M3, 'seuclidean');
h = linkage(dist, 'average');
c = cluster(h, 'maxclust', n_clusters);
imc1 = reshape(c, size(Im,1),size(Im,2)); 
imc = impyramid(imc1, 'expand');       
Seg =  imc*round(255/n_clusters);
figure
imshow(Seg, [], 'Colormap', jet);
end



