# paths
export PATH="/usr/local/mysql/bin:/usr/local/share/npm/bin:~/aws-eb/:$PATH"

# aliases
alias cd..="cd .."
alias l="ls -al"
alias lp="ls -p"
alias lsd='ls -Gl | grep "^d"'
alias reload="source ~/.bash_profile"
alias ..="cd .."
alias ...="cd ../.."
alias update='sudo softwareupdate -i -a; brew update; brew upgrade'
alias chr='open -a Google\ Chrome --args --disable-web-security'
alias jgit='~/bin/org.eclipse.jgit.pgm-3.5.1.201410131835-r.sh'
alias awsdevtools='sudo /AWSDevTools/Linux/AWSDevTools-RepositorySetup.sh'

# git related
function glab() { git add .; git commit -a -m "$1"; git push lab develop; }
function glive() { git add .; git commit -a -m "$1"; git push live develop; }
function gorg() { git add .; git commit -a -m "$1"; git push origin develop; }
function gb() { git add .; git commit -a -m "$1"; git push bocogit develop; }
function gc() { git add .; git commit -a -m "$1"; }
function bbc() { git clone git@bitbucket.org:therues/$1.git; }
function npmg() { ln -s /usr/local/lib/node_modules node_modules; } 


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

source ~/git-completion.bash
source ~/.rvm/scripts/rvm
# source ~/.profile

# z for finding frequently-used dirs
. `brew --prefix`/etc/profile.d/z.sh

# Environment Vars
export LSCOLORS=gxfxcxdxbxggedabagacad
export CLICOLOR=1

GIT_PS1_SHOWDIRTYSTATE=true

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

if [ -f ~/.git-flow-completion.sh ] ; then
    source ~/.git-flow-completion.sh
fi

PS1='
\[\e[1;30m\][ \[\e[1;34m\]\u\[\e[0;34m\]@\[\e[1;34m\]\h \[\e[1;30m\]| \[\e[0;35m\]\@ \[\e[1;30m\]]
[ \[\e[0;31m\]\w\[\e[1;31m\]$(__git_ps1) \[\e[1;30m\]]
\[\e[1;30m\]> \[\e[0m\]'

PATH=$PATH:./node_modules/.bin
export PATH
