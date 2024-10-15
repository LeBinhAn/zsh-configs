# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
  ZSH_THEME="avit"
else
  ZSH_THEME="powerlevel10k/powerlevel10k"
fi

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function lla() {
	ls -al "$@"
}

# ZSH config alias
alias sz='source ~/.zshrc'
alias ez='nvim ~/.zshrc'

# Git related aliases
alias eg='nvim ~/.gitconfig'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add fzf to the current shell
eval "$(fzf --zsh)"

source ~/powerlevel10k/powerlevel10k.zsh-theme

# Load local zsh config
[[ ! -f ~/.zshrc-local ]] || source ~/.zshrc-local
