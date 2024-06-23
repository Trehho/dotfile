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
alias ii='sudo pacman -S'
alias rr='sudo pacman -Rs'
alias ls='exa'
alias la='exa -la'
alias grep='grep --color=auto'
alias v='nvim'
alias cat='bat'
alias ..='cd ..'
alias ...='cd ../..'
alias ff="fzf --preview 'bat --color=always {}' --preview-window '~3'"
alias gs="git status"
alias fl='ls /usr/include/ | grep '
alias fm='vifm'

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
