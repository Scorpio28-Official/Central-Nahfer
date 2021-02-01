#!/bin/bash

# menu ejemplo en dialog

setterm -foreground green
clear

dialog --infobox "iniciando Consola..." 0 0 ; sleep 2

dialog --infobox "loading..." 0 0 ; sleep 3

play-audio /data/data/com.termux/files/home/Central-Nahfer/datos/sonidos/creador.m4a &
dialog --title "INFORMACION" --infobox "NAHFER HACKING ES UNA HERRAMIENTA DE HACKING
QUE NOS OFRECE VARIAS CATEGORIAS DE HERRAMIENTAS DE HACKING.

CREADOR DEL SCRIPT: CAPITAN COMANDO." 0 0
sleep 10
play-audio /data/data/com.termux/files/home/Central-Nahfer/datos/sonidos/menu.m4a &

menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "CENTRAL NAHFER HACKING" \
    --menu "" 15 51 6 \
    1 "Administrador de archivos" \
    2 "Analizador de archivos" \
    3 "Borrar y Actualizar Script" \
    4 "Almanezamiento" \
    5 "Nahfer-Tools" \
    6 "salir" \
    7 "PhoneScanner" \
    8 "Nahfer-Phisher" \
    00 "Ajustes" )
chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $menuitem == 1 ]]; then
            cd $HOME
            mc
        elif [[ $menuitem == 2 ]]; then
            cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/Cleaner-007
chmod 777 cleaner-007.sh
bash cleaner-007.sh
      elif [[ $menuitem == 3 ]]; then
            echo "option 3"
            
        elif [[ $menuitem == 4 ]]; then
            echo "option 4"
            
        elif [[ $menuitem == 5 ]]; then
            echo cd Central-Nahfer
            ls
            cd a
            chmod 711 tools.sh
            bash tools.sh
    
        elif [[ $menuitem == 6 ]]; then
       ls
        elif [[ $menuitem == 7 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/PhoneScanner

python3 -m pip install -r requirements.txt
bash PhoneScanner.sh
        elif [[ $menuitem == 8 ]]; then
       cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/Phisher
 bash Nahfer-Phish.sh 
       
        elif [[ $menuitem == 0 ]]; then
      echo "Ajustes no encontrados"
        else
            echo "exit"
            exit 0
        fi
        ;;
    1)
        echo "cancelado .."
        ;;
    255)
        echo ""
        echo $(clear);exit 1
        ;;

esac
