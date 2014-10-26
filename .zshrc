HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
export PS1="%M %~ >%"
setopt correctall
autoload -U compinit
compinit
bindkey -v
autoload -Uz compinit
compinit
