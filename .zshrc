# Themes.
ZSH_THEME="oxide"

# Case-sensitive completion.
CASE_SENSITIVE="true"

# Disable bi-weekly auto-update checks.
zstyle ':omz:update' mode disabled

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Disable marking untracked files under VCS as dirty.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# History.
HIST_STAMPS="yyyy-mm-dd"

# Plugins.
plugins=(
    archive
    extract
    git
)

# Environment variables.
source ~/.exports

# Oh My Zsh.
source ~/.oh-my-zsh/oh-my-zsh.sh

# User config.
source ~/.zsh/setopt.zsh

# Aliases.
source ~/.aliases
if [ -e "~/.aliases_private" ];
    then
      source ~/.aliases_private;
fi

# Functions.
source ~/.functions
if [ -e "~/.functions_private" ];
    then
      source ~/.functions_private;
fi

# Private config.
if [ -e "~/.privaterc" ];
    then
      source ~/.privaterc;
fi

# Tracks your most used directories, based on frecency with z.
if [ -e "~/.zsh/plugins/z/z.sh" ];
    then
      source ~/.zsh/plugins/z/z.sh;
fi

# dircolors.
if [ -x "$(command -v dircolors)" ]; then
    eval "$(dircolors -b ~/.dircolors)"
fi

# fzf key bindings.
if [ -x "$(command -v fzf)" ]; then
    source ~/.fzf/shell/key-bindings.zsh
fi

# Base16 Shell.
if [ -f ~/.local/bin/base16-oxide ]; then
    source ~/.local/bin/base16-oxide
fi

# Start tmux on load
if [ -z "$TMUX" ]
then
    tmux attach -t default && exit || tmux new -s default && exit
fi

