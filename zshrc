# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
setopt autocd
bindkey -e
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/phi/.zshrc'

autoload -Uz compinit
compinit

setopt PROMPT_SUBST

#ghost autocompletion
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#add icons in ls
source ~/.local/share/icons-in-terminal/icons_bash.sh

#all alias
#alias ls='ls --color=auto'
alias ls='/opt/coreutils/bin/ls --color=auto'
alias ..='cd ..'
alias lsa='ls --color=auto -a'
alias lsl='ls -w1'
alias lsla='lsa -w1'
alias dir='ls -d */'
alias dirl='dir -w1'
alias dira='lsa -d */ .*/'
alias diral='dira -w1'
alias rmrf='rm -rf'
alias vim="nvim"
alias bat="cat"
alias cat="bat"
alias su='echo "$(whoami) are you sure what you are going to do?" && su && echo "goodbye ROOT... Hello $(whoami)" && notify-send  "goodbye ROOT... Hello $(whoami)"'
alias LOL='notify-send  "STARTING LOL" && sudo sh -c "sysctl -w abi.vsyscall32=0" && lutris "rungame/league-of-legends"'
alias WP="whatscli"



clone()(
        git clone https://github.com/$1
)

#color scheme for new terminal
cat ~/.cache/wal/sequences

#arrow PS1 like parrot
PROMPT="┌─[%i@%m]-[%~]"$'\n'"└───> "
