# ~/.zshenv
ZDOTDIR=$HOME/.config/zsh

path=($ZDOTDIR/plugins/fzf/bin $path)
export PATH
export EDITOR=vim
export LANG=en_US.UTF-8

. "$HOME/.local/bin/env"
