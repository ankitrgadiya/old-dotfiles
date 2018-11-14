# Begin ~/.scripts/bash_alias.sh

# Copyright 2017-2018, Ankit R Gadiya
# BSD 3-Clause License

# SSH
alias rpi='ssh rpi.local'
alias euclid='ssh euclid.local'
alias debian='ssh debian.local'
alias arch='ssh arch.local'
alias arlo='ssh arlo'

# Git
alias gs='git status'
alias gd='git diff'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gsl='git shortlog'
alias ga='git shortlog -s'

# Shortcuts
alias f='free'
alias g='grep'
alias l='ls'
alias r='ranger'
alias t='tmux -u'
alias u='uptime -p'
alias v='vim'
alias vi='vim'
alias nv='nvim'
alias nvi='nvim'
alias music='mpv --no-video --loop=inf --shuffle'

# Human friendly
alias df='df --human'
alias du='du --human'
alias free='free --human'

# Safety
alias cp='cp --interactive --verbose'
alias mv='mv --interactive --verbose'
alias rm='rm --interactive --verbose'
alias mkdir='mkdir --verbose'

# Colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# External services
alias nn='curl --data-urlencode @- "http://nnmm.nl/"'
alias pb='curl -F "c=@${1:--}" https://ptpb.pw/?u=1'

# End ~/.scripts/bash_alias.sh
