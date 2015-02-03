# Warmup Questions

1.  What is the clone url of this repository?
    > https://github.com/alejandracastilla/lab_vision.git   

2.  What is the output of the ``cal`` command?
    > El comando 'cal' muestra el mes actual en la linea de comando 
    > Al utilizar el comando cal [año], se obtiene la respuesta de todo el calendario del año respectivo.
    
        multi 
        line
        answerm

# Homework Questions

1.  What is the ``grep``command?
    >   answer: El comando grep busca y escoge lineas de algún archivo específico que contenga una cadena de caracteres dados. A partir de unos comandos (u opciones) específicos es posible imprimir el número de líneas que contienen la cadena de caracteres, imprimir el número y las lineas respectivas que contengan la palabra, teniendo en cuenta -o ignorando segun la opción- mayúsculas, coincidencias de palabras completas, caracteres únicos, etc.

2.  What is a *makefile*?
    >   answer: es un archivo de texto en el que yace informacion valiosa paa compilar el software, optimizarlo, o instalas ejecutables, manuales y confirguraciones de archivos.

3.  What is *git*?
    >   answer: git es el software que  presta el servicio de control de versiones. Éste puede ser llamado desde la terminal para interactual con el repositorio, que es entonces donde está almacenado el codigo fuente y sus diferentes versiones que cada programador modifica. Git guarda estas versiones y cada programador podrá ver el adelanto del programa que cada trabajor está haciendo en su diferente versión del codigo fuente.

4.  What does the ``-prune`` option of ``find`` do? Give an example
    >   answer: la opcion -prune es una acción que trabaja sobre directorios y previene entrar a directorios en esa condicion.  Prune retorna / imprime los archivos relacionados si ninguna otra opción es especificada.

Por ejemplo, find . -script .snapshot -prune -o -script2 -prune -o script3 '*ale' -print

5.  Where is the file ``xxxxxx``
    >   answer: este es un archivo único temporal. son huellas de una conexión. Es decir, cuando se sube un archivo PEN, por procesamiento, obtenemos dos archivos. Un archivo IDS y otro PDF. estos se encuentran en el sistema de administración estudiantil. (fuente url de consulta: https://www.bced.gov.bc.ca/pen/schools/return.htm)

6.  How many files with ``gnu`` in its name are in ``dir``
    >   answer: gnu find -> 0

7.  How many files contain ``gpl`` inside in ``dir``
    >   answer: 0

8.  What does the ``cut`` command do?
    >   answer: como su nombre lo indica, este comando se utiliza para cortar cadena de caracteres cortados de lineas de texto. Esqueleto: cut [options].

9.  What does the ``wget`` command do?
    >   answer: este comando se puede obtener para descargar archivos en linux. Por ejemplo, es posible descargar un comrpimido de la siguiente manera: wget http://ejemplo.com/programa.tar.gz
(fuente url de consulta: http://kimberling146.blogspot.com/2014/04/uso-del-comando-wget-en-linux.html)

10.  What does the ``diff`` command do?
    >   answer: este comando se utiliza para encontrar diferencias en los archivos. Una manera es comparar los archivos de texto linea por linea. Existen diversas opciones que permiten ignorar la cantidad de espacios en blanco, mayusculas, entre subdirectorios, informar cuando dos archicos sean iguales, entre otras. (fuente url de consulta: https://www.hscripts.com/es/tutoriales/linux-commands/diff.html)

11.  How many users exist in *Guitaca*?
    >   answer: si se utiliza el comando visto en clase etc/pssword se encuentran 48 usuarios. 
        Sin embargo, al utilizar el comando who se observan menos lineas.

12. What command will produce a table of Users and Shells sorted by shell (tip: using ``cut`` and ``sort``)
    >   answer:
                "who que produce un informe de los usuarios que están
                conectados actualmente al sistema. Cada una de las líneas que muestra hace referencia a un usuario,
                y da su nombre de usuario, el terminal al que está conectado, la fecha y hora de entrada al sistema." 
                url de referencia: http://www.uco.es/~in1lurom/materialDocente/apuntesSO.pdf
                grep -i /dev/dfa /etc/fstab | cut --fields==-3

13. What command will produce the number of users with shell ``/sbin/nologin`` (tip: using ``grep`` and ``wc``)
    >   answer: (teniendo en cuenta que los interpretes de usuarios (la terminal) es denominada shell)
                El comando que produce el numero de usuarios con shell
                $ grep -v nologin

14.  What is the name of the linux distribution running on *Guitaca*?
    >   answer: No pude encontrarlo (o pude conectarme a Guitaca desde mi casa :( No me dejó entrar con el Cd tampoco en los computadores de la          Universidad.

15. Create a script for finding duplicate images based on their content (tip: hash or checksum)
    You may look in the internet for ideas, but please indicate the source of any code you use
    Save this script as ``find_duplicates.sh`` in this directory and commit your changes to github

    find -not -empty -type f -printf 
    f dupes es un comando para encontrar archivos duplicados dentro de un directorio especificado.
        
        fdupes /home/Documents/Sipi_images
        (fuente de busqueda: http://laotraboladecristal.com/2011/10/08/encuentra-archivos-duplicados-rapidamente)
        
16. What is the meaning of ``#! /bin/bash`` at the start of scripts?
    >   answer: cuando los primeros caracteres en un script son #!, se conoce como shebang. Cuando se dice #!/bin/bash es tal         que el programa bash esta siendo ussado para interpretar el resto del archivo. Bash resulta ser uno de los shell de          defult más usados en Linux.
        Asimismo, bash es el comando para generar un número aleatorio (esto no lo entendí).
        (fuente de búsqueda: http://stackoverflow.com/questions/13872048/bash-script-what-does-bin-bash-mean)

17. How many unique images are in the ``sipi_images`` folder?
    >   answer: 
    
