#!/bin/bash 

ARR=() 
ARR+=(" Shutdown")
ARR+=(" Suspend")
ARR+=(" Reboot")
ARR+=(" Logout")

choice=$(printf '%s\n' "${ARR[@]}" | rofi -dmenu -theme-str '#listview {scrollbar:false ;}' -theme-str '#window {border:3;}' -theme-str '#window {border-color: #e60053;}' -border-color "#e60053" -theme-str '#window {width:25%;}'  -theme-str '#window {height:20%;}' -font "Fira Code Nerd Font Bold 12" -p "Powermenu")

if [ "$choice" = " Shutdown" ]; then 
	loginctl poweroff 
	exit 0 
fi

if [ "$choice" = " Suspend" ]; then
        loginctl suspend
        exit 0
fi

if [ "$choice" = " Reboot" ]; then
        loginctl reboot
        exit 0
fi

if [ "$choice" = " Logout" ]; then
        bspc quit 
        exit 0
fi
