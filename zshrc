# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
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
alias dc="cd"
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
alias su='echo "$(whoami) are you sure what you are going to do?" && su && echo "goodbye ROOT... Hello $(whoami)" && notify-send  "goodbye ROOT... Hello $(whoami)"'
alias LOL='notify-send  "STARTING LOL" && sudo sh -c "sysctl -w abi.vsyscall32=0" && lutris "rungame/league-of-legends"'
alias WP="whatscli"

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;      
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

e () {
    local var=$(fd . --type f --hidden | sk --preview "bat --theme=OneHalfDark --color=always {}" --preview-window noborder)
    if [ "$var" ]; then nvim "$var"; fi
}

clone()(
        git clone https://github.com/$1
)

#color scheme for new terminal
cat ~/.cache/wal/sequences

#arrow PS1 like parrot
PROMPT="┌─[%i@%m]-[%~]"$'\n'"└───> "
export PATH="$PATH:$HOME/.spicetify"
