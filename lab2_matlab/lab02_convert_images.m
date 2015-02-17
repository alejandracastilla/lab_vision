%% convierte todas las imágenes a .jpg
clc
clear all
fileName=dir('*.tiff');
for i=1:(length(fileName))
    files= imread(fileName(i).name);
    nombre=fileName(i).name(1:7); %1:'hasta los caracteres que hayan antes del .tiff'
    tojpg(files, nombre);
end
