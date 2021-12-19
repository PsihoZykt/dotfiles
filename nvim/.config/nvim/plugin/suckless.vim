"Recompile suckless on config edit
"autocmd BufWritePost ~/.local/src/dwm-flexipatch-finalized/config.h !cd ~/.local/src/dwm-flexipatch-finalized/; sudo make install && kill -HUP (pgrep -u $USER "\bdwm$") 
autocmd BufWritePost ~/.local/src/dwm-flexipatch-finalized/config.h !cd ~/.local/src/dwm-flexipatch-finalized/; sudo make install && kill -HUP (pidof dwm) 
autocmd BufWritePost ~/.local/src/st-flexipatch/config.h !cd ~/.local/src/st-flexipatch/; sudo make install; killall -q st;setsid -f st 
autocmd BufWritePost ~/.local/src/dmenu/config.h !cd ~/.local/src/dmenu/; sudo make install ;killall -q dmenu;setsid -f dmenu 
autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install; killall -q dwmblocks; setsid -f dwmblocks;
