#
# .bashrc
#
# Aliases and Functions
#

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ls='ls -hFG'
alias l='ls -lF'
alias ll='ls -alF'
alias lt='ls -ltrF'
alias ll='ls -alF'
alias lls='ls -alSrF'
alias llt='ls -altrF'

alias tarc='tar cvf'
alias tarcz='tar czvf'
alias tarx='tar xvf'
alias tarxz='tar xvzf'

alias d='docker'
alias dkill='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
alias g='git'
alias less='less -R'
alias os='lsb_release -a'
