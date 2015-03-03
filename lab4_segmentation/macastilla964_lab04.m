%% Lab 4 - Segmentación
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
%% Implementación de Métodos
%% Procesamiento imágenes RGB
% -# En espacio RGB Segmentación por Kmeans
    segment_by_clustering(img2018,'RGB', 'Kmeans',4)
    segment_by_clustering(img3063,'RGB', 'Kmeans',4)
    segment_by_clustering(img5096,'RGB', 'Kmeans',4)
    segment_by_clustering(img6046,'RGB', 'Kmeans',4)
    segment_by_clustering(img8068,'RGB', 'Kmeans',4)
% -# En espacio RGB Segmentación por GMM
    segment_by_clustering(img2018,'RGB', 'GMM',4)
    segment_by_clustering(img3063,'RGB', 'GMM',4)
    segment_by_clustering(img5096,'RGB', 'GMM',4)
    segment_by_clustering(img6046,'RGB', 'GMM',4)
    segment_by_clustering(img8068,'RGB', 'GMM',4)
%% Procesamiento imágenes Lab
% -# En espacio Lab Segmentación por Kmeans
    segment_by_clustering(img2018,'Lab', 'Kmeans',4)
    segment_by_clustering(img3063,'Lab', 'Kmeans',4)
    segment_by_clustering(img5096,'Lab', 'Kmeans',4)
    segment_by_clustering(img6046,'Lab', 'Kmeans',4)
    segment_by_clustering(img8068,'Lab', 'Kmeans',4)
% -# En espacio Lab Segmentación por GMM
    segment_by_clustering(img2018,'Lab', 'GMM',4)
    segment_by_clustering(img3063,'Lab', 'GMM',4)
    segment_by_clustering(img5096,'Lab', 'GMM',4)
    segment_by_clustering(img6046,'Lab', 'GMM',4)
    segment_by_clustering(img8068,'Lab', 'GMM',4)
%% #- FIN.
