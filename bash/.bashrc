# Begin ~/.bashrc

# Copyright 2016-2018, Ankit R Gadiya
# BSD 3-Clause License

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# [[ $- = *i* ]] && bind TAB:menu-complete

# Bash Completion
if ! shopt -oq posix
then
	if [ -f /usr/share/bash-completion/bash_completion ]
	then
		source /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]
	then
		source /etc/bash_completion
	fi
fi

# External sources
source ~/.scripts/bash_alias.sh
source ~/.scripts/bash_color.sh

# ENV variable
export EDITOR=vim
export TERM=xterm-256color
export GPG_TTY=$(tty)
export PS1="[\u@\h \w]$ "

# Path
export PATH=$HOME/.scripts:$HOME/.local/bin/:$PATH

# Vi mode
set -o vi

# Append `cd` to directory names
shopt -s autocd

# End ~/.bashrc
