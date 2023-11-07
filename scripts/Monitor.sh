#!/bin/bash
#--------------------------------------------------------------------#
# Autor: Juan Jose Solorzano.
# Propose: This script allows to change the HDMI monitor location.
# Use: """""""""
#--------------------------------------------------------------------#
position=$1

#Check for empty parameter
if [ ! "$position"]; then
	echo "[<position>] --> 'right', 'left', 'above'"
else

#Select the user position
if [ $position == "left" ]; then
	pos="right-of"
elif [ $position == "right" ]; then
	pos="left-of"
elif [ $position == "above" ]; then
	pos="above"
else
	echo "working on other configurarions..."
fi
	
#Set comand to xrandr application
xrandr --output eDP-1 --primary --mode 1366x768 --rotate normal --output HDMI-1 --mode 1366x768 --rotate normal --$pos eDP-1
fi

# this is a test for news comments
# and how to copie various line of 
# code using neovim and mainly, 
# how can I improve the merge using
# the new line of the code.
#
