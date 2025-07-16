export ZSH="$ZDOTDIR/oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
[[ -f "$ZDOTDIR/.p10k.zsh" ]] && source "$ZDOTDIR/.p10k.zsh"

alias vi='nvim'
alias cat='bat'
alias lgit='lazygit'
alias ls='lsd'
alias help='tldr'

neofetch
