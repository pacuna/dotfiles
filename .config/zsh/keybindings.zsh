# ~/.config/zsh/keybindings.zsh

# ── Vi mode ───────────────────────────────────────────────────────────────────

bindkey -v
KEYTIMEOUT=1

# ── Insert mode ───────────────────────────────────────────────────────────────

bindkey '^R' fzf-history-widget
bindkey '^?' backward-delete-char    # backspace after returning from normal mode
bindkey '^H' backward-delete-char    # Ctrl-H, some terminals send this instead

# ── Normal mode ───────────────────────────────────────────────────────────────

bindkey -M vicmd '^R' fzf-history-widget

# ── Fix common keys that break in vi mode ─────────────────────────────────────

bindkey '^[[H'  beginning-of-line  # Home
bindkey '^[[F'  end-of-line        # End
bindkey '^[[3~' delete-char        # Delete
