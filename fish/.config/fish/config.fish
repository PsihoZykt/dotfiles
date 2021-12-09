### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
#set -x SHELL /bin/bash
set -e fish_user_paths
set -e _JAVA_OPTIONS
### EXPORT ###
set fish_greeting # Supresses fish's intro message
# set TERM "st-256color" # Sets the terminal type
set -gx EDITOR nvim
set -U MPD_HOST ~/.config/mpd/socket #Set socket for mpd
set -gx PATH /home/psihoz/.config/cargo/bin $PATH
### "nvim" as manpager
set -x MANPAGER "nvim -c 'set ft=man' -"
### SET EITHER DEFAULT EMACS MODE OR VI MODE ###
function fish_user_key_bindings
  # fish_default_key_bindings
 fish_vi_key_bindings
end


### FUNCTIONS ###
# Functions needed for !! and !$
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

# The bindings for !! and !$
if [ $fish_key_bindings = fish_vi_key_bindings ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

# Function for creating a backup file
# ex: backup file.txt
# result: copies file as file.txt.bak
function backup --argument filename
    cp $filename $filename.bak
end


### END OF FUNCTIONS ###
#Loading aliases  and shortcuts
if test -f $XDG_CONFIG_HOME/fish/aliasrc.fish
  source $XDG_CONFIG_HOME/fish/aliasrc.fish
end
if test -f $XDG_CONFIG_HOME/fish/shortcutrc.fish
  source $XDG_CONFIG_HOME/fish/shortcutrc.fish
end
