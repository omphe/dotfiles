.PHONY: all dotfiles configfiles

all: dotfiles configfiles

dotfiles:
	stow git && \
	stow tmux && \
	stow vim && \
	stow zsh


configfiles:
	stow --target=/home/omphe/.config config 
