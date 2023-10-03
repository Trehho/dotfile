#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#

# Alias
alias ls='exa'
alias grep='grep --color=auto'
alias la='exa -la'
alias ua='sudo pacman -Syyu'
alias v='nvim'
alias sv='nvim -o'
alias cat='bat'
alias bg='cd ..'
alias bgg='cd ../..'
alias ff="fzf --preview 'bat --color=always {}' --preview-window '~3'"
alias test="cargo watch -x"
alias gf="go fmt"
alias gp="git push"
alias gc="git commit -m"
alias gs="git status"
alias mc="make clear"

# Git 
ga (){
	git add .
	git commit -m $1
}
gw (){
	git add .
	git commit -m $1
	git push
}


eval "$(starship init bash)"
. "$HOME/.cargo/env"
