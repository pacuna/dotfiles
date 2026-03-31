HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE   # prefix cmd with space to skip history
setopt SHARE_HISTORY       # sync across sessions
setopt EXTENDED_HISTORY    # timestamps
