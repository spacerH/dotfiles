#!/bin/bash
## /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Script for Random Wallpaper ( CTRL ALT W)

wallDIR="$HOME/wallpaper/"
scriptsDir="$HOME/.config/hypr/scripts"

PICS=($(find ${wallDIR} -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" \)))
RANDOMPICS=${PICS[$RANDOM % ${#PICS[@]}]}

# Transition config
FPS=75
TYPE="random"
DURATION=1
BEZIER=".43,1.19,1,.4"
SWWW_PARAMS="--transition-fps $FPS --transition-type $TYPE --transition-duration $DURATION --transition-bezier $BEZIER"

swww query || swww init && swww img ${RANDOMPICS} $SWWW_PARAMS
sleep 0.5
${scriptsDir}/PywalSwww.sh
sleep 0.3
${scriptsDir}/Refresh.sh
pywalfox update
pywal-discord default
spicetify config current_theme spicewal
spicetify config color_scheme spicewal
spicetify apply
spotify
