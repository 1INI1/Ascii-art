#!/bin/bash

clear
URL="https://open.spotify.com/track/2lpjCkXacFsN3iYPCOTO7Q?si=d9c14f88631e44ff"
############################## commence chant ##########################

# 1. Start Spotify in the background if it isn't running, sending outputs to null
spotify 1>/dev/null 2>&1 &

# 2. Give the application a brief moment to boot up and hook into D-Bus
sleep 2.5

# 3. Instruct Spotify via D-Bus to immediately open and play your URI
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify \
    /org/mpris/MediaPlayer2 \
    org.mpris.MediaPlayer2.Player.OpenUri string:"$URL" > /dev/null

############################ The text you want to animate #################

Loading="Commencing divine spirit commune rite"
load1=".."
load2="...."
load3="......"

text1="Hail spirit of the machine, essence divine,
In your code and circuitry the stars align."

text2="By the Omnissiah's will we commune and bind,
With sacred oils and chants your grace we find."

text3="Blessed be the gears, in perfect sync they turn;
Blessed be the sparks, in holy fire they burn."

text4="through rites arcane, your wisdom we discern,
In your hallowed core the sacred mysteries yearn."

text5="the machine spirit is pleased. Commending divine upgrade"

art="⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠉⠙⠓⠢⢤⣀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⡄⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⡄⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣾⡇⢠⡠⢤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀
⠀⠀⠀⡀⣿⡇⢿⣃⠀⠀⠈⠙⠒⠢⠤⠄⠄⠒⠒⠚⠃⠀⠀⣀⠄⢸⠀⠀⠀⠀
⠀⠀⢠⠀⣿⠇⠄⠙⠓⠲⣤⣀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣼⠏⠁⠀⠀⢧⠀⠀⠀
⠀⠀⢸⡷⠻⡗⠀⠀⣀⣠⣤⣤⣽⣿⣿⣿⣿⣿⣶⣶⣦⣤⣄⡀⠀⠀⢀⡇⠀⠀
⠀⠀⠨⠂⠶⣷⣿⣿⣿⣿⣿⣿⣿⣿⢹⣿⡟⢻⣿⣿⣿⣿⣿⣿⣿⣦⢀⡇⠀⠀
⠀⠠⣴⠀⣼⣿⣿⣿⣿⣿⡡⢿⣿⠇⣾⡟⡀⠸⣿⡹⣿⡏⠛⣿⣿⣿⡆⢧⠀⠀
⠀⠠⠇⣼⣿⣿⣿⣿⢿⣿⡿⠿⣋⣾⠟⠁⢣⣷⡈⢿⣌⠳⣴⡿⢃⣿⣿⡌⢣⠀
⠀⠂⢠⣿⣿⣿⣷⡟⠶⠶⠖⠚⠋⠉⠀⠀⠘⠛⠃⠀⠉⠓⠒⠒⣫⣿⣿⣧⠀⢳
⠀⢠⣾⣿⣿⣿⢿⣿⣷⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⠟⠋⣿⣟⣷⠀⠈
⠀⣾⢻⠛⣿⣿⣆⠙⢄⠘⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⣿⠷⢡⣿⠋⠉⠀⠀
⠂⠿⣿⣶⣿⣿⣿⣄⠀⠙⢼⣷⡀⠀⠀⡆⠀⠈⡆⠀⢠⢻⠁⢠⣻⡿⠁⠀⠀⠀
⠤⠀⠀⠹⢿⣿⣿⣿⣧⣄⠀⢹⣷⡄⣀⣵⣶⡶⠷⠶⣴⡟⡰⢫⣿⡇⠀⠀⠀⠄
⠈⢀⣤⣤⣼⣿⣿⣿⣿⣿⡄⠈⣿⣷⣿⠋⠁⠀⠀⠀⠀⢻⡁⣸⣿⡁⠀⠀⠀⠀
⣿⣯⡀⠀⠉⠛⠿⢿⣿⣿⣿⡄⢹⣿⣿⣀⠀⠀⣀⣤⣀⠘⣿⣿⠟⠀⠀⠀⠀⠀
⣿⣿⣆⣀⡀⠀⡰⣿⡈⣿⣿⣿⣼⣿⣿⣷⣾⡿⠿⠿⣿⣷⣿⣷⠀⠀⣴⣿⣿⣿
⠉⢾⣿⣛⣭⡍⡿⢁⡇⣿⣿⣿⣿⣿⣿⣿⣿⡟⡁⢉⣻⣿⣿⡏⠀⠀⠉⠉⢉⣿
⠀⠈⢽⣿⡽⠖⢀⣿⡧⢻⣿⣿⣿⣿⣿⣿⣿⣃⡀⠀⣈⣿⣿⡇⠀⠀⠀⠀⣾⡟"

############### Text Color ################
GREEN="\e[32m"
BLUE="\e[34m"
YELLOW="\e[33m"
RED="\e[31m"
RESET="\e[0m"


############ Loop through the text, ###################

animate_REDwords() {

for word in $1; do

     echo -ne " ""${RED}$word${RESET}"
    sleep 0.3
done
     echo ""
}


animate_GREENwords() {

for word in $1; do
	echo -ne " ""${GREEN}$word${RESET}"
	sleep 0.3
done

	echo ""
}

animate_YELLOWwords() {

for word in $1; do

     echo -ne " ""${YELLOW}$word${RESET}"
    sleep 0.1
done
     echo ""
}

animate_YELLOWart() {

for word in $1; do

     echo -e  " ""${YELLOW}$word${RESET}"
    sleep 0.1
done
     echo ""
}



############# Text output list ###################

animate_YELLOWwords "$Loading"
animate_YELLOWwords "$load1"
animate_YELLOWwords "$load2"
animate_YELLOWwords "$load3"
animate_REDwords "$text1"
animate_REDwords "$text2"
animate_REDwords "$text3"
animate_REDwords "$text4"
animate_YELLOWwords "$load3"
animate_YELLOWwords "$load2"
animate_YELLOWwords "$load1"
animate_GREENwords "$text5"
animate_YELLOWart "$art"




sudo apt-get upgrade
sudo apt-get update

