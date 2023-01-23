#!/bin/bash

#ActividadUD6 SSII Miguel Lorente Sanjuan

#Guardamos en variables los nombres del Usuario y grupo
Usuario="UsuarioPizarra"
Grupo="GrupoPizarra"
case "$1" in
    instalar)

        #Creacion del directorio
        echo "Ingrese el nombre del directorio de instalación, el directorio se creara en $pwd: "
        read dirnombre

        #Bucle que revisa si el directorio existe y lo crea
        if [ ! -d "$dirnombre" ]; then
            mkdir $dirnombre
            echo "Directorio creado exitosamente: $dirnombre"
        else
            echo "El directorio $dirnombre ya existe, no se creará de nuevo."
        fi

        #Creacion el usuario
        sudo useradd $Usuario
        echo "Usuario " $Usuario " creado exitosamente"

        #Creacion del grupo
        sudo groupadd $Grupo

        #Cambio de owner del directorio
        sudo chown -R $Usuario $dirnombre
 
        #instalacion de JRE
        sudo apt install default-jre

        echo "Java jre instalado con exito"

        #Pasamos pizarra.class al directorio creado anteriormente
        cp pizarra.class $dirnombre
    ;;

    ejecutar)

        #Peticion al usuario del nombre del archivo txt y del color en el que lo quiere imprimir
        echo "Ingresa el archivo que quieres ejecutar"
        read archivo
        echo "Ingresa la letra del color quieres imprimir el texto. R = Rojo, V = Verde, A = Amarillo" 
        read color

        #Ejecucion de pizarra con el archivo y color como parametros
        java pizarra $archivo $color
        ;;
    
    desinstalar)

        #Borrado de usuario y grupo
        sudo userdel -r %Usuario
        sudo groupdel -r %Grupo
    
        echo "Grupo y usuario borrados con exito"

        #Borrado del JRE
        sudo apt remove default-jre

        echo "Java jre desinstalado con exito"
        ;;

    ayuda)
        echo "1. instalar: Crea un directorio, agrega un usuario y un grupo,"
        echo "cambia el propietario del directorio al usuario recién creado, instala el JRE y copia un archivo de clase al directorio de instalación."
        echo "2. ejecutar: Pide al usuario el nombre de un archivo de texto y un color, y ejecuta un archivo pizarra.class con esos argumentos."
        echo "3. desinstalar: Elimina el usuario y el grupo creados anteriormente y desinstala el JRE."
        ;;
esac