export ZSH="${HOME}/.oh-my-zsh"

# Theme.
ZSH_THEME="spaceship"
export SPACESHIP_DIR_TRUNC=0

# Plugins.
plugins=(git web-search pyenv)

source $ZSH/oh-my-zsh.sh

# Set colors for LS_COLORS.
eval `dircolors ~/.dircolors`
