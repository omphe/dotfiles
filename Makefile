.PHONY: all dotfiles configfiles

all: dotfiles configfiles

dotfiles:
	stow git && \
	stow tmux && \
	stow vim && \
	stow Xresources && \
	stow zsh


configfiles:
	stow --target=$(HOME)/.config config 
