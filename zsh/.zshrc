#My configuration
cat ~/Documents/linux-config/other/ascii_bash
export EDITOR="vim"
export NNTPSERVER="news.epita.fr"
export INTERNET="OK"
alias open="xdg-open"
alias laravel="~/.composer/vendor/bin/laravel"
alias vps="ssh victorboissiere@tivbroc.com"
alias phpstorm="/home/victor/Documents/installation/PhpStorm-162.1121.38/bin/phpstorm.sh"
alias pa="php artisan"
alias rapache="sudo service apache2 restart"
alias gitst="git status"
eval "$(thefuck --alias)"

# Path to your oh-my-zsh installation.
export ZSH=/home/victor/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

# Shortcuf config
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias i3config='vim ~/.i3/config'

# Reload config
alias refreshzsh='source ~/.zshrc'

# Utils
alias copy='xclip -sel clip'

source $ZSH/oh-my-zsh.sh

