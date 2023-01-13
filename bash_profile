export BASH_SILENCE_DEPRECATION_WARNING=1

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PS1='[xumingze@local \w] '

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

PATH=/usr/local/bin:$PATH
export PATH=$HOME/.toolbox/bin:$PATH
eval "$(/opt/homebrew/bin/brew shellenv)"
