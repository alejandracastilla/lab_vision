function rta = watershed_lab04( Im, n_clusters )
    I = double(rgb2gray(uint16(Im)));
    sy = fspecial('sobel');
    sx = sy';
    imx = imfilter(I, sx, 'replicate');
    imy = imfilter(I, sy, 'replicate');
    MG = sqrt(imx.^2 + imy.^2); %Magnitude
    m = imextendedmin(MG, n_clusters); %markers
    g = imimposemin(MG, m);
    imageCluster1 = watershed(g);
    figure
    imshow(imageCluster1, [], 'Colormap', jet);
end