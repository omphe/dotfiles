# dotfiles

To engage any of the dotfiles in this repository, simply enter the .dotfiles directory and run `stow <directory name>`


## Setup

Clone this repository with:

`git clone git@github.com:omphe/dotfiles.git .dotfiles`

### Vim

Install Vundle locally with:

`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Perform an update of all plugins using:  

`vim +PluginInstall +qall`

Further help with Vundle can be found on the Vundle [Quick Start instructions](https://github.com/VundleVim/Vundle.vim#quick-start)

### Tmux

To make best use of tmux in all shells, set your Terminal to run `tmux attach` at startup

## Customisations

Any account specific aliases for ZSH, eg job/personal aliases should be created in the user's $HOME directory and will be sourced by the .zshrc in this repository.  Simply create the file and it'll be sourced on launch.  

## Further Reading

Good inspiration to be found at:

- [dotfiles.github.com](https://dotfiles.github.io/)
