# Actividad6SSIIShellScripting

Este script es parte de la actividad 6 de la asignatura de SSII del ciclo formativo de grado superior DAM. Consiste en una herramienta para la instalación, ejecución y desinstalación de un programa en java al que pasandole un archivo de texto y un color como parametros imprime por pantalla el archivo de texto en el color seleccionado.

Instalación:
Para instalar el programa, ejecute el script con el argumento "instalar". Se pedirá el nombre del directorio de instalación, el cual se creará en el directorio actual si no existe. También se creará un usuario y un grupo, se cambiará el propietario del directorio al usuario recién creado, se instalará el JRE y se copiara el archivo .class al directorio de instalación.

Ejecución:
Para ejecutar el programa, ejecute el script con el argumento "ejecutar". Se pedirá el nombre de un archivo de texto y una letra de color (R = Rojo, V = Verde, A = Amarillo), y se ejecutará el archivo "pizarra.class" con esos argumentos.

Desinstalación:
Para desinstalar el programa, ejecute el script con el argumento "desinstalar". Se eliminará el usuario y el grupo creados anteriormente y se desinstalará el JRE.

Ayuda:
Para ver una descripción detallada de los argumentos, ejecute el script con el argumento "ayuda".
