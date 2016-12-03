# =========================================      ZSH      ======================================

# Path to your oh-my-zsh installation.
export ZSH=/home/victor/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# =========================================    Global   ======================================

# Ascii art when opening new terminal
cat ~/Documents/linux-config/other/ascii_bash

# Set vim editor for git, ...
export EDITOR="vim"
# News EPITA
export NNTPSERVER="news.epita.fr"
# i3blocks script for internet
export INTERNET="OK"

# =========================================   Websites  ======================================

# VPS
alias vps="ssh victorboissiere@tivbroc.com"

# =========================================     Dev     ======================================

alias phpstorm="/home/victor/Documents/installation/PhpStorm-162.1121.38/bin/phpstorm.sh"

# Reload Apache
alias rapache="sudo service apache2 restart"

# =========================================   Laravel   ======================================

# Create new Laravel project
alias laravel="~/.composer/vendor/bin/laravel"

alias pa="php artisan"


# =========================================     Git     ======================================

alias gitst="git status"

# ========================================= Config files ======================================

# Shortcut to config files
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias i3config='vim ~/.i3/config'

# Source ZSH config file
alias szrc='source ~/.zshrc'

# =========================================  Navigation  ======================================

alias ~='cd ~'

# ========================================  Installation  =====================================

alias apt-i='sudo apt-get install'
alias apt-u='sudo apt-get update'
alias apt-r='sudo apt-get remove'
alias apt-U='sudo apt-get upgrade'
alias apt-uU='sudo apt-get update && sudo apt-get upgrade'

# =========================================     Utils     ======================================

# Copy register
alias copy='xclip -sel clip'

# Mac like open
alias open="xdg-open"

# Sudo shortcut
alias s='sudo'

# =========================================      FUN      ======================================

# Fix command line
eval "$(thefuck --alias)"


