#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#
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

eval "$(starship init bash)"
. "$HOME/.cargo/env"

#
# Work with git
#
alias gs="git status"
ga (){
	git add .
	git commit -m '$1'
}
gw (){
	git add .
	git commit -m '$1'
	git push
}
