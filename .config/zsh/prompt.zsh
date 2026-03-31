# ── vcs_info ──────────────────────────────────────────────────────────────────

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%b)'
setopt PROMPT_SUBST

# ── Vi mode indicator ─────────────────────────────────────────────────────────

function zle-line-init zle-keymap-select {
  case $KEYMAP in
    vicmd)      VI_MODE="%F{yellow}[N]%f" ;;
    viins|main) VI_MODE="%F{green}[I]%f" ;;
  esac
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# ── Prompt ────────────────────────────────────────────────────────────────────

PROMPT='${VI_MODE} %F{cyan}%~%f${vcs_info_msg_0_} %# '
