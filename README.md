# dotfiles

To use these dotfiles, install GNU `stow` with your friendly, local package manager.

Then simply:

```bash
cd <your-dotfiles-directory>
stow <dotfile directory>
```

This will symlink the dotfiles found in this repository to your home directory.  Voila, a happy, familiar CLI setup.

## Setup

Clone this repository with:

`git clone git@github.com:omphe/dotfiles.git .dotfiles`

### Vim

Install Vundle locally with:

`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Perform an update of all plugins using:  

`vim +PluginInstall +qall`

Further help with Vundle can be found on the Vundle [Quick Start instructions](https://github.com/VundleVim/Vundle.vim#quick-start)

Install vim-go support by running from within Vim:

`:GoInstallBinaries` 

### Tmux

To make best use of tmux in all shells, set your Terminal to run `tmux attach` at startup

## Customisations

Any account specific aliases for ZSH, eg job/personal aliases should be created in the user's $HOME directory and will be sourced by the .zshrc in this repository.  Simply create the file and it'll be sourced on launch.  

## Further Reading

Good inspiration to be found at:

- [dotfiles.github.com](https://dotfiles.github.io/)
