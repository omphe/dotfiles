# dotfiles repository for all omphe activities

To engage any of the dotfiles in this repository, simply enter the .dotfiles directory and run `stow <directory name>`


## Manual steps 

After cloning this repository into a fresh shell, a couple of manual steps need to be performed:

- Pull down Vundle with: git clone  https://github.com/VundleVim/Vundle.vim.git
- Perform an update of all plugins using:  vim +PluginInstall +qall

## Customisations

Any account specific aliases for ZSH, eg job/personal aliases should be created in the user's $HOME directory and will be sourced by the .zshrc in this repository.  Simply create the file and it'll be sourced on launch.  
