export PATH="/usr/local/mysql/bin:$PATH"

# aliases
alias cd..="cd .."
alias l="ls -al --color"
alias lp="ls -p --color"
alias lsd='ls -Gl | grep "^d"'
alias reload="source ~/.bash_profile"
alias ..="cd .."
alias ...="cd ../.."
alias update='sudo softwareupdate -i -a; brew update; brew upgrade'

# text related
alias sublime='/Applications/Sublime\ Text\ 2.app/Contents/MacOS/Sublime\ Text\ 2'

# git related
alias glab='git add .; git commit -m "update"; git push lab'
alias glive='git add .; git commit -m "update"; git push live'
alias gorg='git add .; git commit -m "update"; git push origin'
alias gbb='git add .; git commit -m "update"; git push bb'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias lanip="ipconfig getifaddr en1"
alias ipl="ipconfig getifaddr en1"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# source /etc/bash_completion.d/git

# Environment Vars
export LSCOLORS=gxfxcxdxbxggedabagacad
export CLICOLOR=1

GIT_PS1_SHOWDIRTYSTATE=true

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

PS1='
\[\e[1;30m\][ \[\e[1;34m\]\u\[\e[0;34m\]@\[\e[1;34m\]\h \[\e[1;30m\]| \[\e[0;35m\]\@ \[\e[1;30m\]]
[ \[\e[0;31m\]\w\[\e[1;31m\]$(__git_ps1) \[\e[1;30m\]]
\[\e[1;30m\]> \[\e[0m\]'
