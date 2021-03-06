#-- ZSH --#
###########

# Path to your oh-my-zsh installation.
export ZSH=/home/victor/.oh-my-zsh

# Disable composer xdebug warning for performance issue
export COMPOSER_DISABLE_XDEBUG_WARN=false

ZSH_THEME="robbyrussell"

plugins=(git zsh-syntax-highlighting yarn)

# "Cd history"
setopt autopushd pushdminus pushdsilent pushdtohome

source $ZSH/oh-my-zsh.sh
source ~/tiny-care.env


#-- TMP --#
##############
alias backend='cd /var/www/safedesk-backend'
alias frontend='cd /var/www/safedesk-frontend'
alias dealfront='cd /var/www/dealon-frontend'
alias dealback='cd /var/www/dealon-backend'
alias edu-manager='cd /var/www/edu-manager'

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

# Git some autocompletion
autoload bashcompinit
bashcompinit
source ~/gh_complete.sh

#-- WEBSITES --#
################

# VPS
alias vps="ssh victorboissiere@tivbroc.com"

#-- DEV --#
###########

# Reload Apache
alias rapache="sudo service apache2 restart"

# Apache configuration file
alias capache="sudo vim /etc/apache2/sites-available/000-default.conf"

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

# Open git in browser
function go() {
  giturl=$(git config --get remote.origin.url)
  if [ "$giturl" = "" ]; then
     echo "Not a git repository or no remote.origin.url set"
     return
  fi

  giturl=${giturl/git\@github\.com\:/https://github.com/}
  giturl=${giturl/\.git/\/tree/}
  branch="$(git symbolic-ref HEAD 2>/dev/null)" ||
  branch="(unnamed branch)"     # detached HEAD
  branch=${branch##refs/heads/}
  giturl=$giturl$branch
  "Opening your git.."
  google-chrome $giturl > /dev/null 2>&1
}

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

alias upload-scan='cd ~/scan && node index.js'


#-- COMPOSER --#
################

alias c='composer'

#-- NODEJS --#
##############

alias y='yarn'


#-- FUN --#
###########

# Fix command line
eval "$(thefuck --alias)"


# added by travis gem
[ -f /home/victor/.travis/travis.sh ] && source /home/victor/.travis/travis.sh
