# ENV variable
export EDITOR="emacsclient -a '' -t"
export VISUAL="emacsclient -a '' -c"
export GPG_TTY=$(tty)
export PS1="[\u@\h \w]$ "
export GOPATH="$HOME/Codes/go"
export GOROOT="$HOME/.local/go"
export GO111MODULE="auto"

# Path
export PATH=$HOME/.local/bin:$PATH
export PATH=$GOPATH/bin:$HOME/.local/go/bin:/usr/local/go/bin:$PATH
export PATH=$HOME/.scripts:$PATH
export MANPATH=$HOME/.local/share/man:$MANPATH

# Source RC File
source ~/.bashrc
