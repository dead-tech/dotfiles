# If you come from bash you might have to change your $PATH.
export ZSH="$HOME/.oh-my-zsh"

HIST_STAMPS="mm/dd/yyyy"

plugins=(
  git
  # git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  zsh-autosuggestions
  # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  zsh-syntax-highlighting
  # git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
  zsh-z
  web-search
)

source $ZSH/oh-my-zsh.sh

export PATH="/home/dead/.local/bin/:/opt/bin/:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Function to open a git repo from terminal
openrepo()
{
    git remote -v | head -n 1 | awk -F "@" '{print $2}' | awk -F " " '{print $1}' | sed 's/:/\//g' | sed 's/.git//g' | awk '{print "http://"$1}' | xargs brave-browser
}

# Aliases 
alias ..="cd .."
alias cl="clear"
alias ll="ls -lAhF"
alias mkdir="mkdir -pv"
alias cp="cp -vi"
alias mv="mv -vi"
alias rm="rm -vi"

alias aptup="sudo apt update && sudo apt upgrade"
alias aptupd="sudo apt update"
alias aptupg="sudo apt upgrade"
alias aptin="sudo apt update && sudo apt install"
alias aptrm="sudo apt remove"

alias gst="git status"
alias gaa="git add ."
alias gcm="git commit -m"

alias path="echo -e ${PATH//:/\\n}"
alias ping="ping -c 5"

alias editrc="nvim ~/.zshrc"
alias sourcerc="source ~/.zshrc"

# Cargo
. "$HOME/.cargo/env"

# Starship theme
eval "$(starship init zsh)"

# Zsh-z
autoload -U compinit && compinit
zstyle ':completion:*' menu select
