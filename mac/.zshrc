# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH="/opt/homebrew/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"

# Source environmental variables
DEFAULT_USER="ben"
DOTFILES_PATH=$HOME/.$DEFAULT_USER/dotfiles/zsh
source $DOTFILES_PATH/environment_vars.zsh

# Themes https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Plugins
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
	dotenv
	macos
	docker 
	poetry
)

source $ZSH/oh-my-zsh.sh

# ---------------------- User configuration ---------------------- #

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vi'
else
	export EDITOR='vi'
fi

# hide the terminal context
prompt_context(){}

# ---------------------- Sourcing configuration ---------------------- #

source $DOTFILES_PATH/additional_configs.zsh
source $DOTFILES_PATH/aliases.zsh
source $DOTFILES_PATH/functions.zsh
source $DOTFILES_PATH/numpad.zsh

eval "$(pyenv init --path)"
eval "$(pyenv init -)"

export PATH="$HOME/.poetry/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"
