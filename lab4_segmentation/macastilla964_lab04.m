%% Lab 4 - Segmentaci�n
%% - Limpieza
clc
clear all
close all
%% Carga de img
Im=imread('peppers.png');
img2018= imread('2018.jpg');
img3063= imread('3063.jpg');
img5096= imread('5096.jpg');
img6046= imread('6046.jpg');
img8068= imread('8068.jpg');
%% Implementaci�n de M�todos
%% Procesamiento im�genes RGB
% -# En espacio RGB Segmentaci�n por Kmeans
    segment_by_clustering(img2018,'RGB', 'Kmeans',4)
    segment_by_clustering(img3063,'RGB', 'Kmeans',4)
    segment_by_clustering(img5096,'RGB', 'Kmeans',4)
    segment_by_clustering(img6046,'RGB', 'Kmeans',4)
    segment_by_clustering(img8068,'RGB', 'Kmeans',4)
% -# En espacio RGB Segmentaci�n por GMM
    segment_by_clustering(img2018,'RGB', 'GMM',4)
    segment_by_clustering(img3063,'RGB', 'GMM',4)
    segment_by_clustering(img5096,'RGB', 'GMM',4)
    segment_by_clustering(img6046,'RGB', 'GMM',4)
    segment_by_clustering(img8068,'RGB', 'GMM',4)
% -# En espacio RGB Segmentaci�n por Hierarchical
    segment_by_clustering(img2018,'RGB', 'hierarchical',4)
    segment_by_clustering(img3063,'RGB', 'hierarchical',4)
    segment_by_clustering(img5096,'RGB', 'hierarchical',4)
    segment_by_clustering(img6046,'RGB', 'hierarchical',4)
    segment_by_clustering(img8068,'RGB', 'hierarchical',4)
%     segment_by_clustering(Im,'RGB', 'hierarchical',4)
% -# En espacio RGB Segmentaci�n por watershed
    segment_by_clustering(img2018,'RGB', 'watershed',4)
    segment_by_clustering(img3063,'RGB', 'watershed',4)
    segment_by_clustering(img5096,'RGB', 'watershed',4)
    segment_by_clustering(img6046,'RGB', 'watershed',4)
    segment_by_clustering(img8068,'RGB', 'watershed',4)
%     segment_by_clustering(Im,'RGB', 'watershed',4)
%% Procesamiento im�genes Lab
% -# En espacio Lab Segmentaci�n por Kmeans
    segment_by_clustering(img2018,'Lab', 'Kmeans',4)
    segment_by_clustering(img3063,'Lab', 'Kmeans',4)
    segment_by_clustering(img5096,'Lab', 'Kmeans',4)
    segment_by_clustering(img6046,'Lab', 'Kmeans',4)
    segment_by_clustering(img8068,'Lab', 'Kmeans',4)
% -# En espacio Lab Segmentaci�n por GMM
    segment_by_clustering(img2018,'Lab', 'GMM',4)
    segment_by_clustering(img3063,'Lab', 'GMM',4)
    segment_by_clustering(img5096,'Lab', 'GMM',4)
    segment_by_clustering(img6046,'Lab', 'GMM',4)
    segment_by_clustering(img8068,'Lab', 'GMM',4)
% -# En espacio RGB Segmentaci�n por Hierarchical
    segment_by_clustering(img2018,'Lab', 'hierarchical',4)
    segment_by_clustering(img3063,'Lab', 'hierarchical',4)
    segment_by_clustering(img5096,'Lab', 'hierarchical',4)
    segment_by_clustering(img6046,'Lab', 'hierarchical',4)
    segment_by_clustering(img8068,'Lab', 'hierarchical',4)
%     segment_by_clustering(Im,'Lab', 'hierarchical',4)
% -# En espacio RGB Segmentaci�n por watershed
    segment_by_clustering(img2018,'Lab', 'watershed',4)
    segment_by_clustering(img3063,'Lab', 'watershed',4)
    segment_by_clustering(img5096,'Lab', 'watershed',4)
    segment_by_clustering(img6046,'Lab', 'watershed',4)
    segment_by_clustering(img8068,'Lab', 'watershed',4)
%     segment_by_clustering(Im,'Lab', 'watershed',4)
% %% #- FIN.
