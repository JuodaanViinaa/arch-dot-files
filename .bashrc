#
# ~/.bashrc
#


# If not running interactively, don't do anything
# [[ $- != *i* ]] && return


# Aliases
alias ls='ls --color=auto'
alias update='sudo pacman -Syu'

# Set titlebar as most recent command
trap 'printf "\033]0;%s\007" "${BASH_COMMAND//[^[:print:]]/}" >&2' DEBUG

# Set prompt style and color
PS1='\u@\h \e[1;32m\w\e[0m > '

# Set pywal color scheme
(cat ~/.cache/wal/sequences &)


# Key bindings
# Let TAB show autocomplete suggestions sequentially
bind TAB:menu-complete
# Use arrows to search history
# bind '"\e[A": history-search-backward'
# bind '"\e[B": history-search-forward'


# Print message
# Sets variable 'line' as equal to a random line from .pratchett_quotes.txt. Then prints
# line in the desired color.
line=$(shuf -n 1 ~/.pratchett_quotes.txt)
echo -e $'\e[0;32m'$line$'\e[0m'


# User-defined environment variables

