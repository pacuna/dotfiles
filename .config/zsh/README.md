# dotfiles

Personal zsh configuration for macOS.

## What's inside

```
~/.config/zsh/
├── .zshrc              # entry point, sources everything
├── aliases.zsh
├── completions.zsh
├── functions.zsh
├── history.zsh
├── keybindings.zsh
├── prompt.zsh
├── tools/
│   └── fzf.zsh
└── plugins/            # not tracked, cloned on bootstrap
    ├── fzf/
    ├── zsh-autosuggestions/
    └── zsh-syntax-highlighting/
```

## Setting up on a new machine

### 1. Clone the bare repo

```bash
git clone --bare git@github.com:yourusername/dotfiles.git $HOME/.dotfiles
```

### 2. Define the `dot` alias

```bash
alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

### 3. Check out the files

```bash
dot checkout
```

If you get a conflict error (existing files at those paths), back them up first:

```bash
mkdir -p ~/.dotfiles-backup

dot checkout 2>&1 \
  | grep "^\s" \
  | awk '{print $1}' \
  | while read -r file; do
      mkdir -p "$HOME/.dotfiles-backup/$(dirname "$file")"
      mv "$HOME/$file" "$HOME/.dotfiles-backup/$file"
    done

dot checkout
```

### 4. Hide untracked files

```bash
dot config status.showUntrackedFiles no
```

### 5. Clone plugins

```bash
PLUGINS=$HOME/.config/zsh/plugins

git clone https://github.com/zsh-users/zsh-autosuggestions       $PLUGINS/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting    $PLUGINS/zsh-syntax-highlighting
git clone https://github.com/junegunn/fzf                         $PLUGINS/fzf
```

### 6. Install the fzf binary

```bash
~/.config/zsh/plugins/fzf/install --bin
```

### 7. Open a new shell

```bash
exec zsh
```

---

## Daily usage

The `dot` alias is just `git` pointed at the bare repo. Use it exactly like git:

```bash
dot status
dot add ~/.config/zsh/aliases.zsh
dot commit -m "aliases: add git shortcuts"
dot push
```

To make `dot` available in every session, it's defined in `aliases.zsh` — which is already tracked in the repo.

## Updating plugins

Plugins are plain git repos. Update them individually:

```bash
git -C ~/.config/zsh/plugins/zsh-autosuggestions pull
git -C ~/.config/zsh/plugins/zsh-syntax-highlighting pull
git -C ~/.config/zsh/plugins/fzf pull && ~/.config/zsh/plugins/fzf/install --bin
```

## Key bindings

| Key | Action |
|-----|--------|
| `Ctrl-R` | Fuzzy search shell history |
| `Ctrl-T` | Fuzzy file picker, pastes path to prompt |
| `Alt-C`  | Fuzzy cd into subdirectory |
| `**Tab`  | Fuzzy completion (e.g. `vim **<Tab>`) |

## Requirements

- macOS (zsh is the default shell since Catalina)
- git
- Nothing else — all tools are self-contained in `~/.config/zsh/`
