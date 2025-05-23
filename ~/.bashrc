#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
stty -ixon

alias ls='ls --color=auto'
alias df="dysk"
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
clear
neofetch
# echo 'export PATH="$HOME/.emacs.d/bin:$PATH"' >> ~/.bashrc
eval "$(starship init bash)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export PATH="$HOME/.emacs.d/bin:$PATH"
. "$HOME/.local/bin/env"
