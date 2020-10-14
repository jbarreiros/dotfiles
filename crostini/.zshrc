source /home/johnbarreiros/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
#antigen bundle zsh-users/zsh-syntax-highlighting

export NVM_COMPLETION=true
antigen bundle lukechilds/zsh-nvm

# Load the theme.
#antigen theme robbyrussell

export SPACESHIP_EXIT_CODE_SHOW=true
antigen theme denysdovhan/spaceship-prompt

# Tell Antigen that you're done.
antigen apply

