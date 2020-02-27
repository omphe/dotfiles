# Enable Powerline
if [[ -r /usr/share/powerline/bindings/zsh/powerline.zsh ]]; then
  source /usr/share/powerline/bindings/zsh/powerline.zsh
fi



# Path to your oh-my-zsh configuration.
# ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git osx ruby rvm vagrant bundler gem heroku grails)

# source $ZSH/oh-my-zsh.sh

# folder of all of your autocomplete functions
# fpath=($HOME/.zsh-completions $fpath)


# enable autocomplete function
autoload -U compinit
compinit

# Environment variables
export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export EDITOR=vim

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Set up Golang
export GOPATH=$HOME/Code/go_workspace
export PATH=$PATH:$(go env GOPATH)/bin

# add rbenv to path
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# Set up Rust
export PATH="$HOME/.cargo/bin:$PATH"


# Utility aliases
alias ll='ls -la'
alias ls='ls -G'
alias rt='cd `git rt`'
alias vm_running='VBoxManage list runningvms'
alias xopen='xdg-open'
alias zrs='source ~/.zshrc'

#prevent rake tasks from mangling spaces and special characters in zsh
alias rake="noglob rake"

# Source local account aliases
if [ -f $HOME/.aliases ]; then
  source $HOME/.aliases
fi

# Kubectl autocompletion
if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi


function code {
  cd ~/Code/$1 && tmux rename-window $1
}


compdef '_files -W ~/Code' code
