# Begin ~/.bashrc

# Copyright 2016-2019, Ankit R Gadiya
# BSD 3-Clause License

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

# Load ssh-agent
if [ -e ~/.ssh/ssh-agent-env ]
then
	source ~/.ssh/ssh-agent-env > /dev/null
fi

# External sources
source ~/.scripts/bash_alias.sh
source ~/.scripts/bash_color.sh

# ENV variable
export EDITOR="emacsclient -a '' -t"
export VISUAL="emacsclient -a '' -c"
export GPG_TTY=$(tty)
export PS1="[\u@\h \w]$ "
export GOPATH="$HOME/Codes/go"
export GOROOT="/usr/local/go"
if [[ -z "$TERM" ]]
then
	export TERM=xterm-256color
fi

# Path
export PATH=$HOME/.local/bin:$PATH
export PATH=$GOPATH/bin:$HOME/.local/go/bin:/usr/local/go/bin:$PATH
export PATH=$HOME/.scripts:$PATH
export MANPATH=$HOME/.local/share/man:$MANPATH

# Vi mode
set -o vi

# Append `cd` to directory names
shopt -s autocd

# Saner History
## Source: https://github.com/mrzool/bash-sensible
shopt -s histappend
shopt -s cmdhist
HISTSIZE=500000
HISTFILESIZE=100000
HISTCONTROL="erasedups:ignoreboth"

# End ~/.bashrc
