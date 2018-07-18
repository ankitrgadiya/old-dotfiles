# Begin ~/.scripts/bash_alias.sh

# Copyright 2017-2018, Ankit R Gadiya
# BSD 3-Clause License

# Aliases

## SSH
alias rpi='ssh rpi.local'
alias euclid='ssh euclid.local'
alias debian='ssh debian.local'
alias arch='ssh arch.local'
alias arlo='ssh arlo'

## Git
alias gs='git status'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

## Misc
alias pb='curl -F "c=@${1:--}" https://ptpb.pw/?u=1'
alias nn='curl --data-urlencode @- "http://nnmm.nl/"'
alias v='vim'
alias r='ranger'
alias l='ls --color=auto'
alias g='grep --color=always'
alias t='tmux -u'

# End ~/.scripts/bash_alias.sh
