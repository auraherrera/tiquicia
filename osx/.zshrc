export ZSH="/Users/aursolis/.oh-my-zsh"
export PATH=~/.local/bin:$PATH
export POWERLINE_CONFIG_COMMAND="/Library/Python/2.7/bin/powerline-config"

source $ZSH/oh-my-zsh.sh
source ~/antigen/antigen.zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle aws
antigen bundle git
antigen bundle pip
antigen bundle tmux
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme miloshadzic 

# Tell Antigen that you're done.
antigen apply

if [ "$TMUX" = "" ]; then $(tmux new -s puravida); fi
