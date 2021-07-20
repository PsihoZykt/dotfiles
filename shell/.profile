#!/bin/sh

# profile file. Runs on login. Environmental variables are set here.

# If you don't plan on reverting to bash, you can remove the link in ~/.profile
# to clean up.

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"

#unsetopt PROMPT_SP
# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="qutebrowser"
#export LC_ALL="en_US.UTF-8"
# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
#export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/shell/inputrc"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export NETRC="${XDG_CONFIG_HOME:-$HOME/.config}/netrc"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export CARGO_HOME="$XDG_CONFIG_HOME"/cargo
export MOZ_LEGACY_HOME="$XDG_CONFIG_HOME"/mozilla
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
# Other program settings:
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"

#Data [.local/share]
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"


#cache
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

#Set media folder
export MEDIA=/mnt/media
export MOZ_USE_XINPUT2="1"		# Mozilla smooth scrolling/touchpads.

#For backuping programm - bup
export BUP_DIR=/home/psihoz/.backup/.bup
