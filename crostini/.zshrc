source /home/johnbarreiros/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
#antigen bundle zsh-users/zsh-syntax-highlighting

export NVM_COMPLETION=true
antigen bundle lukechilds/zsh-nvm

export SPACESHIP_EXIT_CODE_SHOW=true
antigen theme denysdovhan/spaceship-prompt

antigen apply

# Notes
# - `antigen list` shows all installed bundles
# - To cleanup unused bundles, `antigen cleanup`

