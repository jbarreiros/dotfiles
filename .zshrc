source /home/john/antigen.zsh

antigen use oh-my-zsh

antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting

export NVM_COMPLETION=true
antigen bundle lukechilds/zsh-nvm

export SPACESHIP_EXIT_CODE_SHOW=true
antigen theme denysdovhan/spaceship-prompt

antigen apply

# Notes
# - `antigen list` shows all installed bundles
# - To cleanup unused bundles, `antigen cleanup`


# pnpm
export PNPM_HOME="/home/john/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

alias pls='sudo $(fc -ln -1)'
alias myip="curl http://ipecho.net/plain; echo"
