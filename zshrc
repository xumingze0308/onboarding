export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PS1='[xumingze@local %~] '

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias python='python3'

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

