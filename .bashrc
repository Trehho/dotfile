#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#

# System alias
alias uu='sudo pacman -Syyu' #sync and update arch
alias ur='sudo pacman -Scc' #pacman remove cashe
alias urr='sudo pacman -Qttdq | pacman -Rns -' #remove unuse packages
alias rr='sudo pacman -Rs'
alias ls='exa'
alias la='exa -la'
alias grep='grep --color=auto'
alias v='nvim'
alias cat='bat'
alias bg='cd ..'
alias bgg='cd ../..'
alias ff="fzf --preview 'bat --color=always {}' --preview-window '~3'"
alias test="cargo watch -x"
alias gs="git status"

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
