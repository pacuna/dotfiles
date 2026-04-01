# ~/.zshenv
ZDOTDIR=$HOME/.config/zsh

path=($ZDOTDIR/plugins/fzf/bin $path)
export PATH
export EDITOR=vim
export LANG=en_US.UTF-8

# private vars — never committed
[[ -f $HOME/.zshenv.local ]] && source $HOME/.zshenv.local
