# ~/.config/zsh/.zshrc

source $ZDOTDIR/history.zsh
source $ZDOTDIR/completions.zsh
source $ZDOTDIR/prompt.zsh
source $ZDOTDIR/keybindings.zsh
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/functions.zsh

# Tools
source $ZDOTDIR/tools/fzf.zsh
source $ZDOTDIR/tools/sdkman.zsh
source $ZDOTDIR/tools/uv.zsh

# Plugins — syntax-highlighting must be last
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
