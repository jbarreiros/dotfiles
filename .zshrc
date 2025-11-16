export ZSH="$HOME/.oh-my-zsh"
plugins=(starship git colorize command-not-found nvm)
zstyle ':omz:plugins:nvm' autoload yes
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pnpm
export PNPM_HOME="/home/john/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

alias vi='nvim'
alias pls='sudo $(fc -ln -1)'
alias myip="curl http://ipecho.net/plain; echo"

# Must be last
eval "$(starship init zsh)"

