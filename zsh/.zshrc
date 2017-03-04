#-- ZSH --#
###########

# Path to your oh-my-zsh installation.
export ZSH=/home/victor/.oh-my-zsh

# Disable composer xdebug warning for performance issue
export COMPOSER_DISABLE_XDEBUG_WARN=false

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

#-- TMP --#
##############
alias backend='cd /var/www/checkMail-backend'
alias frontend='cd /var/www/checkMail-frontend'
alias doc='cd ~/prog/mti/checkmail-doc'

#-- GLOBAL --#
##############

# Ascii art when opening new terminal
cat ~/Documents/linux-config/other/ascii_bash

# Set vim editor for git, ...
export EDITOR="vim"
# News EPITA
export NNTPSERVER="news.epita.fr"
# i3blocks script for internet
export INTERNET="OK"

#-- WEBSITES --#
################

# VPS
alias vps="ssh victorboissiere@tivbroc.com"

#-- DEV --#
###########

# Reload Apache
alias rapache="sudo service apache2 restart"

#-- LARAVEL --#
###############

# Create new Laravel project
alias laravel="~/.composer/vendor/bin/laravel"

# Php artisan (Laravel)
alias pa="php artisan"


#-- GIT --#
###########

# Git aliases
alias gs="git status"
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit -m "
alias gp="git push"
alias nah="git reset --hard HEAD"

#-- CONFIG FILES --#
####################

# Shortcut to config files
alias zrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias i3config='vim ~/.i3/config'

# Source ZSH config file
alias szrc='source ~/.zshrc'

# Personal help
alias my-help='babel-node ~/prog/personal/dotfiles-help/src/index.js'

#-- NAVIGATION --#
##################

# No need for cd
alias ~='cd ~'

#-- INSTALLATION --#
####################

# Apt-get package manager
alias apt-i='sudo apt-get install'
alias apt-r='sudo apt-get remove'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias autoremove='sudo apt autoremove'

#-- UTILS --#
#############

# Copy register
alias copy='xclip -sel clip'

# Mac like open
alias open="xdg-open"

# Sudo shortcut
alias s='sudo'

# Become root
alias root='sudo -i'

# Google-chrome
alias chrome='google-chrome'

# Number of commits
alias nbc='git log --oneline | wc -l'

# Color managment
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


#-- COMPOSER --#
################

c()
{
  composer $1
}

#-- FUN --#
###########

# Fix command line
eval "$(thefuck --alias)"



# added by travis gem
[ -f /home/victor/.travis/travis.sh ] && source /home/victor/.travis/travis.sh
