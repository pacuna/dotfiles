autoload -Uz compinit && compinit
setopt MENU_COMPLETE
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'  # case-insensitive
