export ZSH="${HOME}/.oh-my-zsh"

# Theme.
ZSH_THEME="spaceship"
export SPACESHIP_DIR_TRUNC=0

# Settings.
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13


# Plugins.
plugins=(
	git
	zsh-autosuggestions
	last-working-dir
	macos
	web-search
	pyenv
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Set colors for LS_COLORS.
eval `dircolors ~/.dircolors`
