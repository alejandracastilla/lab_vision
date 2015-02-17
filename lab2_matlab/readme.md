# Introduction to Images in Matlab

## Setup

1.  Start the virtual machine
2.  Clone the original lab vision repository

    ```bash
    git clone https://github.com/diego0020/lab_vision.git lab_vision_orig
    ```
3.  Clone your fork from the repository

    ```bash
    git clone https://github.com/<USER>/lab_vision.git lab_vision
    ```
4.  Copy the folder lab2_matlab to your repository

    ```bash
    cp -rf lab_vision_orig/lab2_matlab lab_vision
    ```
5.  Delete the original repository from your machine

    ```bash
    rm -rf lab_vision_orig
    ```
6.  Commit changes to your repository

    ```bash
    cd lab_vision
    git status
    git add *
    git commit -m "added matlab lab"
    ```
7.  Push changes

    ```bash
    git push
    ```    
8.  Download and uncompress the sipi_images misc folder in your home folder

    ```bash
    cd ~
    scp -r vision@guitaca.uniandes.edu.co:/home/vision/sipi_images/misc.tar.gz .
    # alternative
    # wget http://sipi.usc.edu/database/misc.tar.gz
    tar -xzf misc.tar.gz
    ```    
9.  Open matlab

    ```bash
    /usr/local/MATLAB/R2014b/bin/matlab
    ```

Note: On windows you can use [github for windows](https://windows.github.com/) or [git-scm](http://git-scm.com/)

**IMPORTANT**
This file contains questions, you should write your answers here and don't forget to **commit** and **push** to
your github account.

## Working directory

The following commands can be used inside matlab, just like in bash

    -   pwd
    -   ls
    -   cd

For more file system see http://www.mathworks.com/help/matlab/file-operations.html

Note the current directory is also shown at the top of the graphical interface

1.  Change to the *misc* directory, which contains the uncompressed sipi_images
2.  List the contents of the directory

## Reading Images

The [imread](http://www.mathworks.com/help/matlab/ref/imread.html) command is used in matlab to read images. 

1.  Look at the manual page for the command
2.  Read the ``5.1.12`` image

    ```bash
     >   Answer:    im1= imread('5.1.12.tiff');
    ```
   
    What is the dimension of the output?
    ```bash
    >   Answer: La dimensión del output 256x256 uint8
    ```

3.  Read the ``4.2.03`` image
    im2=imread('4.2.03.tiff'); 
    What is the dimension of the output?
    ```bash
    >   Answer: La dimension de 4.2.03 512x512x3 uint8
    ```
## Displaying Images

The following commands can be used for displaying images

-   [image](http://www.mathworks.com/help/matlab/ref/image.html)
-   [imshow](http://www.mathworks.com/help/images/ref/imshow.html)

1.  Look at their manual pages
2.  Try displaying the images read in the previous point using both commands
```bash
    %% imprimir imagen 1
        imshow(im1); title('imagen 5.1.12 con imshow')
        ax(2) = subplot(1,2,2);
        image(im1)
        title('imagen 5.1.12 con image')
    %% imprimir imagen 2
        figure (2)
        ax(3) = subplot(1,2,1);
        imshow(im2); title('imagen 4.2.03 con imshow')
        ax(4) = subplot(1,2,2);
        image (im2); title('imagen 4.2.03 con image')
```

3.  What are the differences?
```bash
    >   Answer: las diferencias de utilizar los comandos consisten en que image permite expandir la imagen mientras imshow la         otra no, coordenadas de la imagen meintras que imshow es como una gráfica simplemente.
        Asimismo, 	Image es una funcióon de intensidades. Practicamente, este es un comando que visualiza la imagen como una         matriz de números. Al usar este comando los colores toman un sinsentido. De hecho, al aplicar un colormap podría dar         resultados inesperados. Esto fue comprobado al visualizar la primera imagen y resultar una imagen con un filtro              amarillo que no poseía la imagen inicial.
    	imshow es un comando para visualizar. Por lo tanto, toma una matriz como una imagen. 
      	Sin mebargo, la unica diferencia notable de las imágenes es que al utilizar image se observa un eje en la imagen que         puede ser activado o desactivado. 
      	Funte de búsqueda: mathworks and help into matlab
```
## Writing Images

The [imwrite](http://www.mathworks.com/help/matlab/ref/imwrite.html) image is used for writing images to disk

1.  Look at the manual page
2.  Write one of the images from before as png and as jpg
```bash
    > imwrite(im1,map,'5.1.12.png')
    > imwrite(im1,map,'5.1.12.jpg')
```
3.  Write a matlab function that takes the path of an image and converts it to jpg
``` bash
    tojpg(imagen)

        %% Función tojpg
            function rta = tojpg(im)
            [pathstr,name,ext]=fileparts('im');
            imwrite(im, [ name, '.jpg']);
            end
```
## Matlab and the shell

### Shell from Matlab

It is possible to excecute bash commands from matlab by using the [system](http://www.mathworks.com/help/matlab/ref/system.html) command
or by using a [bang](http://www.mathworks.com/help/matlab/matlab_env/run-external-commands-scripts-and-programs.html)

1.  Look at the manual pages
2.  Try it (for example ``!ps``)
```bash
        ls también funciona! (cool)
```
### Matlab from the shell

It is also possible to invoke matlab in a non interactive mode to run a script from the terminal. If the matlab
binary is on the system PATH you can do something like this

```bash
    matlab -nodisplay -nosplash -r "write_jpg('boat.512.tiff'); exit"
    # or
    matlab -nodisplay -nosplash script.m"
```
If the command or script doesn't end in ``exit`` the matlab shell will stay open, and will block the bash script.

### Exercise

1.  Create a script for converting all tiff images to jpeg
    -   You may create a bash script that calls matlab
    -   Or a matlab script that calls bash 
    -   Or both
2.  Save this script in the matlab lab folder of your git repository
```bash
    subido en matlab lab folder como repositorio asimismo, así como la función 'tojpg.m'
    ```
## Filters

### Adding noise

The [imnoise](http://www.mathworks.com/help/images/ref/imnoise.html) command can be used to add noise to images.
We can do this to simulate difficult capture conditions, and evaluate the algorithms over difficult situations.

1.  Read the manual page
2.  Try the diffente noise types, and save the noisy images to the repository (5 images)
3.  Try saving noisy images as jpg, what happens?

    ```bash
    El ruido creado en imágenes .jpg es amplificado en comparación con las imágenes en .tiff. No obstante la diferencia sólo     es notoria cuando se ve de cerca los píxeles relativos al ruido impulsional creado por salt and peppers.
    ```

### Median filter

These filters can be applied to a an image in order to remove noise. 
-   To apply a mean filter create it with the function [fspecial](http://www.mathworks.com/help/images/ref/fspecial.html)
    and apply it with [imfilter](http://www.mathworks.com/help/images/ref/imfilter.html) 
-   To apply a median filter use the function [medfilt2](http://www.mathworks.com/help/images/ref/medfilt2.html)

1.  Read the manuals for the functions described above
2.  Try applying both kinds of filters to noisy images. Be sure to zoom in to see the effects
3.  Try different sizes for the filters
4.  Which filter works best for salt & pepper noise?
```bash
    > El mejor filtro para eliminar ruido de sal y pimienta es el mediano debido a que es un filtro más robusto que permite      eliminar outliers como aquellos provenientes de ruido impulsional.
    ```

For more on noise removal read http://www.mathworks.com/help/images/noise-removal.html

### Blur

To blur or smooth an image we can use the mean filter described above. We can also use the gaussian filter
which can be otained from [fspecial](http://www.mathworks.com/help/images/ref/fspecial.html).

1.  Smooth an image using average and gaussian filters
2.  Try different sizes for the filters
3.  What differences do you notice?
 ```bash
    Es posible notar que el filtro promedio es más basto (fuerte) al ser aplicado a la imagen con ruido. Sin embargo, el 'poder' del filtrado dependerá de los parámetros de 'hsize' (tamaño del filtro promedio (kernel)) para el filtro promedio y de qué tan grande sea hsize y sigma (dispersión del filtro gauss: qué tanto está concentrado el filtro en el valor del píxel central de la máscara o ventanita con la que se filtrará)).
    Por otro lado, el filto gauss es más suave, dando una imagen resultado más parecida a la imagen original. En contraste, el filtro promedio -dependiendo del tamaño de hsize- genera una apariencia pasteurizada (como una caricatura) a la imagen.
    ```

### Sharpen

The [imsharpen](http://www.mathworks.com/help/images/ref/imsharpen.html) function lets us sharpen an image. 

1.  Sharp the ``5.1.12`` image. What do you notice?

    > Debido a que se ha aplicado un realce, se observa mejor los bordes y los detalles de la imagen.

2.  Sharp a blurred image. What do you notice?

    > Se ha perdido el efecto de realce que tuvo la imagen no borrosa. Al querer resaltar una imagen suavizada, se obtiene un     realce menos definido.

### Edge detection

The following filters from fspecil can be used to enhance edges in an image
-   laplacian
-   log
-   prewitt
-   sobel

Notice that the last two filters detect horizontal edges, in order to detect vertical edges you have to transpose them.

1.  Try applying this filters
2.  What is the difference between prewitt and sobel?

    > Answer:  La diferencia radica en que sobel posee una máscara tal que los valores externos de la columna central (si es un filtro orizontal) o de la fila central (si es un filtro vertical) tienen un peso mayor que el résto de los pixeles en el kernel o máscara de filtrado. En contraste, la máscara que utiliza Prewitt posee el mismo valor para cada píxel externo a la fila o columna central (-1 y 1). En este punto es importante resaltar que tanto sobel como prewitt detectan los bordes a partir del cálculo de gradiente a partor de discretas diferencias entre columnas y filas. Es por esto que utilizan signos negativos en una fila (o columna) extrema a otra, la cual tiene los mismos valores, pero con signo opuesto.
.
fuente: https://globaljournals.org/GJCST_Volume12/5-Study-and-Comparison-of-Different-Edge.pdf


More sophisticated methods for finding edges can be found in the following pages
    -   http://www.mathworks.com/discovery/edge-detection.html
    -   http://www.mathworks.com/help/images/ref/edge.html

### More

For more filtering operations look at http://www.mathworks.com/help/images/linear-filtering.html

## Color Spaces

As seen on the section on reading image, color images are represented by matrices with 4 dimensios.
The [color](http://www.mathworks.com/help/images/color.html) matlab module contains functions for moving between
color spaces.

1.  Load the ``4.2.03.tiff`` image (Mandril).
2.  Split it into the three color channels
    
    ```matlab
    img=imread('4.2.03.tiff');
    r = img(:,:,1);
    g = img(:,:,2);
    b = img(:,:,3);
    ```
3.  Look at the three channels simultaneusly

    ```matlab
    figure;
    subplot(2,2,1), subimage(img);
    subplot(2,2,2), subimage(r);
    subplot(2,2,3), subimage(g);
    subplot(2,2,4), subimage(b);
    ```
    
4.  Save the mosaic as a png file
    
    ```matlab
    print ('-dpng','rgb_mosaic.png');
    ```
5.  Transform the image to the following color spaces and repeat the exercise
    -   ycbcr
    -   lab
    -   hsv (use [rgb2hsv](http://www.mathworks.com/help/matlab/ref/rgb2hsv.html))

6.  Save all the mosaics in your github repository

## Pyramids

The [impyramid](http://www.mathworks.com/help/images/ref/impyramid.html) function creates gaussian pyramids from an image.

1.  Read the manual page
2.  Create a four level pyramid from the ``5.1.12`` clock  image
3.  At what level does the people in the picture dissappear?

    >   Desaparece en el tercer nivel de la pirámide
    
4.  At what level does the numbers in the clock disappear?

    >   Los números desaparecen en el segundo nivel

## Template Matching

The [norm2corrx](http://www.mathworks.com/help/images/ref/normxcorr2.htm) can be used to look for patterns in an image.

1.  Download the ``sequences.tar.gz`` file (from guitaca or sipi) and decompress it
2.  Go to the sequences directory
3.  Read the ``motion04.512.tiff`` image
4.  Use the ``imcrop`` comand to crop the train at the right side of the figure
    
    ```matlab
    [train,square] = imcrop(image);
    ```
5.  Now use [normxcorr2](http://www.mathworks.com/help/images/ref/normxcorr2.htm) to locate the train back in the image

    ```matlab
    c=normxcorr2(train,image);
    % c is correlation from -1 to 1
    [sx,sy] = size(image);
    d=floor(size(train)/2);
    dx=d(1);
    dy=d(2);
    %Remove borders from c2 to make it the same size as image
    c2=c(dx+1:sx+dx,dy+1:sy+dy);
    %lets accentuate it more
    c3=c2.^3;
    %convert it into an image from 0 to 1
    cr=0.5+0.5*c3;
    %leave the original image as the luminance channel
    y=mat2gray(image);
    %empty cb channel
    cb=0.5*ones(size(image));
    %join the three channels
    ycbcr=cat(3,y,cb,cr);
    rgb=ycbcr2rgb(ycbcr);
    imshow(rgb);
    ```
6.  Explain what the above code does
```
    > Answer:
    %% El código recibe un template, es decir, una imagen plantilla (train) la cual se buscaráen la imagen (image)
    c=normxcorr2(train,image); %%-> Se realiza la crosscorrelación normalizada entre train y la imagen
                               %% es importante resaltar que debe ser normalizada para evitar errores por el tamaño de las                                   %% imágenes
                                % c is correlation from -1 to 1
    [sx,sy] = size(image);      %% Se crea una matriz de tamaño sx * sy que corresponde a las dimensiones x y y de image
    d=floor(size(train)/2);     %% Se toma un valor promedio redondeando hacia abajo. Es necesairio tomar un número exacto
                                %% Otro comando que también se usa es ceil (este redondea hacia arriba)
    dx=d(1);                    %% toma como dx la coordenada 1 de la aproximación realizada, dy como la segunda.
    dy=d(2);
                                %Remove borders from c2 to make it the same size as image
    c2=c(dx+1:sx+dx,dy+1:sy+dy);% Reaciza la operación de cross correlación en la el plano (matriz) creado
                                %lets accentuate it more
    c3=c2.^3;
                                %convert it into an image from 0 to 1
    cr=0.5+0.5*c3;
                                %leave the original image as the luminance channel-> esto permite visualizar el campo
    y=mat2gray(image);          % como una imagen negra que mostrará luz donde haya mayor similitud con la plantilla
                                %empty cb channel
    cb=0.5*ones(size(image));
                                %join the three channels
    ycbcr=cat(3,y,cb,cr);
    rgb=ycbcr2rgb(ycbcr);       %% convertimos la imagen a rgb
    imshow(rgb);                mostramos la imagen final
    ```
7.  Now lets find the train in the next frame, read image ``motion05.512.tiff``.
8.  Apply the procedure written above to it (use the train template from the past frame)
9.  What are the limitations of this method?

    > Answer: Una de los limitaciones más grandes de aplicar template matching de esta forma consiste en que sólo estamos considerando una plantilla. En la vida real, es dificil querer buscar un objeto o cosa exactamente igual a la plantilla que tenemos. Esto dificulta aún más la b´suqueda porque si no tenemos una plantilla lo suficientemente parecida o singular a un punto de la imagen es posible encontrar muchos falsos positivos, o en su defecto no encontrar lo que estamos buscando. Asimismo, resulta importante tener varias plantillas y mirar la croscorrelación con todas estas en la imagen. Esto con el fin de tener más posibilidades de encontrar nuestro objeto de estudio. Si es posible, es conveniente que las plantillas (además de ser varias), puedan ser rotadas. Puesto que nuestr objeto podría estar inclinado, lo cual haría que su reconocimiento fuera aún más arduo con template matching

See [here](http://www.mathworks.com/help/images/examples/registering-an-image-using-normalized-cross-correlation.html)
another example.

## End

Don't forget to commit and push your answers and images to github
