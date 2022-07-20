#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Place for bins
[[ -d $HOME/.bin ]] && export PATH=$HOME/.bin:$PATH

## Variables
export PATH=/usr/lib/python3.10/site-packages:$PATH

# cool alias'
alias clear='clear && pfetch'
alias editkeybinds='vim $HOME/.config/sxhkd/sxhkdrc'
alias vim='nvim'
alias ranger='EDITOR=nvim ranger'

# Pywal
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

pfetch
