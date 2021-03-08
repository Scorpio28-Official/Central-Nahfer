#!/bin/bash
#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
clear
setterm -foreground green
figlet                    "Capitan"
figlet                    "Comando"
setterm -foreground green
echo "
         ██████▓█████▓▓╬╬╬╬╬╬╬╬▓███▓╬╬╬╬╬╬╬▓╬╬▓██
         ████▓▓▓▓╬╬▓█████╬╬╬╬╬╬███▓╬╬╬╬╬╬╬╬╬╬╬╬╬█
         ███▓▓▓▓╬╬╬╬╬╬▓██╬╬╬╬╬╬▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
         ████▓▓▓╬╬╬╬╬╬╬▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
         ███▓█▓███████▓▓███▓╬╬╬╬╬╬▓███████▓╬╬╬╬▓█
         ████████████████▓█▓╬╬╬╬╬▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬█
         ███▓▓▓▓▓▓▓▓▓▓▓▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
         ████▓▓▓▓▓▓▓▓▓▓▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
         ███▓█▓▓▓▓▓▓▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
         █████▓▓▓▓▓▓▓▓█▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
         █████▓▓▓▓▓▓▓██▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██
         █████▓▓▓▓▓████▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██
         ████▓█▓▓▓▓██▓▓▓▓██╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██
         ████▓▓███▓▓▓▓▓▓▓██▓╬╬╬╬╬╬╬╬╬╬╬╬█▓╬▓╬╬▓██
         █████▓███▓▓▓▓▓▓▓▓████▓▓╬╬╬╬╬╬╬█▓╬╬╬╬╬▓██
         █████▓▓█▓███▓▓▓████╬▓█▓▓╬╬╬▓▓█▓╬╬╬╬╬╬███
         ██████▓██▓███████▓╬╬╬▓▓╬▓▓██▓╬╬╬╬╬╬╬▓███
         ███████▓██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬████
         ███████▓▓██▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓████
         ████████▓▓▓█████▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█████
         █████████▓▓▓█▓▓▓▓▓███▓╬╬╬╬╬╬╬╬╬╬╬▓██████
         ██████████▓▓▓█▓▓▓▓▓██╬╬╬╬╬╬╬╬╬╬╬▓███████
         ███████████▓▓█▓▓▓▓███▓╬╬╬╬╬╬╬╬╬▓████████
         ██████████████▓▓▓███▓▓╬╬╬╬╬╬╬╬██████████
         ███████████████▓▓▓██▓▓╬╬╬╬╬╬▓███████████
"
sleep 3

# menu ejemplo en dialog
####№#########№#################################################################################
setterm -foreground green
clear

dialog --infobox "iniciando Consola..." 0 0 ; sleep 2

dialog --infobox "loading..." 0 0 ; sleep 3

play-audio /data/data/com.termux/files/home/Central-Nahfer/datos/sonidos/creador.m4a &
dialog --title "INFORMACION" --infobox "NAHFER HACKING ES UNA HERRAMIENTA DE HACKING
QUE NOS OFRECE VARIAS CATEGORIAS DE HERRAMIENTAS DE HACKING.

CREADOR DEL SCRIPT: CAPITAN COMANDO." 0 0
sleep 10
function principio(){
play-audio /data/data/com.termux/files/home/Central-Nahfer/datos/sonidos/menu.m4a &

menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "CENTRAL NAHFER HACKING" \
    --menu "" 15 51 6 \
    0 "Contacto" \
    1 "Administrador de archivos" \
    2 "Analizador de archivos" \
    3 "Borrar y Actualizar Script" \
    4 "Almanezamiento" \
    5 "Nahfer-Tools" \
    6 "Nahfer Hacking" \
    7 "Instalaciones" \
    8 "descargar sistemas iso" \
    9 "Ajustes")
chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $menuitem == 0 ]]; then
echo "muy pronto"
sleep 3
principio
        elif [[ $menuitem == 1 ]]; then
            cd $HOME
            mc
        elif [[ $menuitem == 2 ]]; then
            cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/Cleaner-007
chmod 777 cleaner-007.sh
bash cleaner-007.sh
      elif [[ $menuitem == 3 ]]; then
            cp Nahfer-Hacking.sh /data/data/com.termux/files/home
cd $HOME
git clone https://github.com/capitancomando/Central-Nahfer
cd Central-Nahfer
chmod 777 Nahfer-Hacking.sh
bash Nahfer-Hacking.sh
            
        elif [[ $menuitem == 4 ]]; then
            echo "option 4"
menu_principal            
        elif [[ $menuitem == 5 ]]; then
          cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/Nahfer-Tools
bash Nahfer-Tools.sh
        elif [[ $menuitem == 6 ]]; then
menu_principal
       elif [[ $menuitem == 7 ]]; then
instalaciones_menu
       elif [[ $menuitem == 8 ]]; then
ls
       elif [[ $menuitem == 9 ]]; then
mi_ajustes
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
}
############### THEMAS DIALOG FONDO ####################


function themas_dialog_ventana(){
    dialogos=$(dialog --backtitle "THEMAS DE NAHFER HACKING." --stdout --title "THEMAS DIALOG." \
     --menu "" 10 50 1 \
     1 "AMARILLO" \
     2 "ROJO" \
     3 "AZUL" \
     4 "CYAN" \
     5 "MAGENTA" \
     6 "VERDE")

 chosen=$?

 case $chosen in
     0)
         echo $(clear)
         if [[ $dialogos == 1 ]]; then
        cd /data/data/com.termux/files/home/Central-Nahfer/datos/banners/dialog/ventana/amarillo
cp .dialogrc $HOME
principio
elif [[ $dialogos == 3 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/banners/dialog/ventana/azul
cp .dialogrc $HOME
principio
elif [[ $dialogos == 4 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/banners/dialog/ventana/cyan
cp .dialogrc $HOME
principio
elif [[ $dialogos == 5 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/banners/dialog/ventana/magenta
cp .dialogrc $HOME
principio
elif [[ $dialogos == 2 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/banners/dialog/ventana/rojo
cp .dialogrc $HOME
principio
elif [[ $dialogos == 6 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/banners/dialog/ventana/verde
cp .dialogrc $HOME
principio
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
}

#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$


#####funcion
# Aqui comienza el menu Nahfer Hacking
clear
#########-ACORTADOR-TINITY
function acortador_tinity(){
HOLA=$(dialog --stdout --title "ACORTADOR" --inputbox "Escribe una url para acortar" 15 71)

dialog --title "ACORTADOR V3" \
      --prgbox "curl -s http://tinyurl.com/api-create.php?url=$HOLA" 15 61
}
############--PRIMER MENU-########################
function menu_principal(){
menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "PIRATERIA HACKING" \
    --menu "" 15 71 6 \
    1 "Ingenieria Social" \
    2 "Hackeo a Fuerza Bruta" \
    3 "Web Extrator Info" \
    4 "Ataques DDOS" \
    5 "Vulnerabilidades" \
    6 "Doxing" \
    7 "Herramientas extras"\
    8 "Metadatas")

chosen=$?

case $chosen in
    0)
        echo $(clear)
         if [[ $menuitem == 1 ]]; then
mi_funcion
        elif [[ $menuitem == 2 ]]; then
mi_funcion_jaja
        elif [[ $menuitem == 3 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/webcraping
bash webcraping.sh
        elif [[ $menuitem == 4 ]]; then
ataques_ddos
        elif [[ $menuitem == 5 ]]; then
            echo "muy pronto"
        elif [[ $menuitem == 6 ]]; then
mi_doxing
else
            echo "exit"
            exit 0
        fi
        ;;
    0)
        echo "cancelado .."
        ;;
    255)
        echo ""
        echo $(clear);exit 1
        ;;

esac
}
#########SEGUNDO MENU-2-INGENIERIA SOCIAL###############
function mi_funcion(){
menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "PIRATERIA HACKING" \
    --menu "" 15 51 6 \
    1 "Phishing" \
    2 "Acortador De URL" \
    3 "Enviar Correo" \
    4 "Susplantador de Correos" \
    5 "Correos Temporales" \
    6 "Rastrear IP" \
    7 "Ataque spam SMS" \
    9 "Scannear Numero" \
   10 "Troyanos" \
   11 "Inyeccion apk Metasploit")
chosen=$?

case $chosen in
    0)
        echo $(clear)
          if [[ $menuitem == 1 ]]; then
mis_phishing
        elif [[ $menuitem == 2 ]]; then
acortador_tinity
        elif [[ $menuitem == 3 ]]; then
            echo "muy pronto"
        elif [[ $menuitem == 4 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/SuMail
chmo 777 SuMail.sh
bash SuMail.sh
        elif [[ $menuitem == 5 ]]; then
        w3m https://tempail.com/es/
        elif [[ $menuitem == 6 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/ISPLocation
bash ISPLocation.sh
        elif [[ $menuitem == 7 ]]; then
            cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/quack
bash SMS.sh
        elif [[ $menuitem == 8 ]]; then
ls
        elif [[ $menuitem == 9 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/PhoneScanner
bash PhoneScanner.sh
        elif [[ $menuitem == 10 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/Nahfer-Troyanos
bash troyanos.sh
        elif [[ $menuitem == 11 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/sh
bash Payloands.sh
   else
echo "exit"
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

}
#############-MENU-3-FUERZA BRUTA##########
function mi_funcion_jaja(){
menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "PIRATERIA HACKING" \
    --menu "" 15 51 6 \
   0 "list" \
   1 "List password" \
   2 "Multi brute" \
   3 "Facebook Fuerza Bruta 1" \
   4 "Facebook Fuerza Bruta 2" \
   5 "Instagram Fuerza Bruta 1" \
   6 "Instagram Fuerza Bruta 2" \
   7 "Twiter Fuerza Bruta" \
   8 "Gmail Fuerza Bruta" \
    9 "Hotmail Fuerza Bruta" \
  10 "Yahoo Fuerza Bruta" \
  11 "Fuerza Bruta Netflix" \
  12 "Volver al Menu anterior")
chosen=$?

case $chosen in

    0)
        echo $(clear)
        
        if [[ $menuitem == 0 ]]; then
echo "nuy pronto"
        elif [[ $menuitem == 1 ]]; then
echo "muy pronto"
sleep 2
mi_funcion_jaja
        elif [[ $menuitem == 2 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/multi-brute
bash cracker.sh
        elif [[ $menuitem == 3 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/Brute_Force
python2 Facebook-FBnahfer.py
        elif [[ $menuitem == 4 ]]; then
     echo "muy pronto"
sleep 2
mi_funcion_jaja
        elif [[ $menuitem == 5 ]]; then 
     echo "muy pronto"
sleep 2
mi_funcion_jaja
       elif [[ $menuitem == 6 ]]; then
echo "muy pronto"
sleep 2
mi_funcion_jaja
      elif [[ $menuitem == 7 ]]; then
     echo "muy pronto"
sleep 2
mi_funcion_jaja
      elif [[ $menuitem == 8 ]]; then
   echo "muy pronto"
mi_funcion_jaja
      elif [[ $menuitem == 9 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/Brute_Force
bash hotmail.sh
      elif [[ $menuitem == 10 ]]; then
echo "muy pronto"
mi_funcion_jaja
      elif [[ $menuitem == 11 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/Brute_Force
bash netflix.sh
      sleep 2
mi_funcion_jaja
     elif [[ $menuitem == 12 ]]; then
menu_principal


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
}
###########-MENU-4 ATAQUES--#########
function ataques_ddos(){
menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "PIRATERIA HACKING" \
    --menu "" 15 51 6 \
    1 "DDOS ANONYMOUS" \
    2 "DDOS HAMMER" \
    3 "DDOS HULK" \
    4 "DDOS NAHFER" \
    5 "DDOS NAHFER V5" \
    6 "DDOS ATACK" \
    7 "DDOS DRIPPER" \
    8 "VOLVER")

chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $menuitem == 1 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/ataques-ddos/DDos-Anonymous
bash anonymous.sh
        elif [[ $menuitem == 2 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/ataques-ddos/Hammer
bash hammer.sh
        elif [[ $menuitem == 3 ]]; then
            echo "muy pronto"
        elif [[ $menuitem == 4 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/ataques-ddos/DDos-Nahfer
bash install.sh
        elif [[ $menuitem == 5 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/ataques-ddos/DDos-NahferV5
bash iniciar.sh
        elif [[ $menuitem == 6 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/ataques-ddos/DDos-Attack
python2 ddos-attack.py
        elif [[ $menuitem == 7 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/ataques-ddos/DDoS-Ripper
bash dripper.sh
        else
            echo "menu_principal"
            menu_principal 0
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
}
##############-----##############

#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

###################AJUSTES-##########################
function mi_ajustes(){
cd /data/data/com.termux/files/home/Central-Nahfer/datos/sonidos
play-audio ajustes.m4a &
sleep 1
ajustes=$(dialog --backtitle "NAHFER HACKING" --stdout --title "AJUSTES" \
    --menu "" 10 50 1 \
    1 "Informacion android" \
    2 "Sonidos" \
    3 "Temas" \
    4 "Seguridad")
chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $ajustes == 1 ]]; then
  neofetch 
echo "CLICK ENTER PARA VOLVER AL MENU PRINCIPAL" | lolcat -a
echo
read
principio
        elif [[ $ajustes == 2 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/sonidos
bash sonidos.sh
        elif [[ $ajustes == 3 ]]; then
            menu_temas
        elif [[ $ajustes == 4 ]]; then
            echo "muy pronto"
        else
            echo "exit"
        fi
        ;;
    1)
        ;;
    255)
        echo ""
            ;;

esac
}
#########################################################
function menu_temas(){
thema_menu=$(dialog --backtitle "NAHFER HACKING" --stdout --title "PIRATERIA HACKING" \
    --menu "" 15 51 6 \
    1 "Banner" \
    2 "Ventana" \
    3 "Volver Atras.")

chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $thema_menu == 1 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/sh
           bash userbanner.sh 
        elif [[ $thema_menu == 2 ]]; then
            themas_dialog_ventana
        elif [[ $thema_menu == 3 ]]; then
             mi_ajustes
        else
            echo "exit"
        fi
        ;;
    1)
        echo "cancelado .."
        ;;
    255)
        echo ""
        ;;

esac


}
########################################################
function mi_doxing(){
clear

doxeos=$(dialog --backtitle "NAHFER HACKING" --stdout --title "DOXING." \
    --menu "" 15 51 6 \
    0 "Crear Plantilla" \
    1 "DoxTracker." \
    2 "DoxWeb." \
    3 "Doxing-Error404." \
    4 "Doxing." \
    5 "Doxing2." \
    6 "DOXing." \
    7 "DFW." \
    8 "INFORMACION."\
    9 "VOLVER ATRAS.")
chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $doxeos == 0 ]]; then
ls
        elif [[ $doxeos == 1 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/doxing/DoxTracker
        elif [[ $doxeos == 2 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/doxing/DoxWeb
bash DoxWeb.sh
        elif [[ $doxeos == 3 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/doxing/Doxing-Error404
python2 doxingE404.py
        elif [[ $doxeos == 4 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/doxing/Doxing
python2 Doxing.py
        elif [[ $doxeos == 5 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/doxing/Doxing2
python3 Looking_Glass.py2
         elif [[ $doxeos == 6 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/doxing/DOXing
python3 
         elif [[ $doxeos == 7 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/doxing/DFW
python2 Doxing-Framework.py
          elif [[ $doxeos == 8 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/doxing/Information
python Information.py
         elif [[ $doxeos == 9 ]]; then
menu_principal
 else
            echo "exit"
            exit 0
        fi
        ;;
    1)
        ;;
    255)
        echo ""
        echo $(clear);exit 1
        ;;

esac


}

function mis_phishing(){
Phishing=$(dialog --backtitle "NAHFER HACKING" --stdout --title "PIRATERIA HACKING" \
    --menu "" 15 51 6 \
    1 "FotoSploit." \
    2 "Nahfer-Phishing." \
    3 "Blackeye." \
    4 "SocialSploit." \
    5 "Weeman" \
    6 "PhishMailer")

chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $Phishing == 1 ]]; then
echo "muy pronto"
        elif [[ $Phishing == 2 ]]; then
            echo "muy pronto"
        elif [[ $Phishing == 3 ]]; then
            echo "muy pronto"
        elif [[ $Phishing == 4 ]]; then
            echo "muy pronto"
        elif [[ $Phishing == 5 ]]; then
            echo "muy pronto"
        elif [[ $Phishing == 6 ]]; then
echo "Muy Pronto"
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
}
principio
