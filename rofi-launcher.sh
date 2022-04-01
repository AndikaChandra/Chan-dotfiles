#!/bin/sh 

rofi -show drun -width 30 \
		 -lines 8 \
		 -font "Fira Code Nerd Font 12" \
		 -show-icons \
		 -fake-transparency \
		 -theme-str '#window {border:4;}' \
		 -theme-str '#window {border-color: #AAD94C;}' \
		 -theme-str '#window {width:30%;}' \
		 -theme-str '#window {height:40%;}' \
		 -theme-str '#window {border-radius: 10px;}'\
		 -theme-str '#listview {scrollbar:false ;}'\
		 -theme-str '#element-icon {size:2.3ch;}'\

