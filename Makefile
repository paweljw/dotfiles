all:
	ln -fs ~/.dotfiles/zshrc ~/.zshrc
	ln -fs ~/.dotfiles/tmux.conf ~/.tmux.conf
	ln -fs ~/.dotfiles/tmux.conf.local ~/.tmux.conf.local
	ln -fs ~/.dotfiles/gitconfig ~/.gitconfig
	ln -fs ~/.dotfiles/gitignore_global ~/.gitignore_global
	ln -fs ~/.dotfiles/gemrc ~/.gemrc
	ln -fs ~/.dotfiles/alacritty ~/.config/alacritty
	ln -fs ~/.dotfiles/nvim ~/.config/nvim
	nvim --headless +PlugInstall +qa
	ln -fs ~/.dotfiles/regolith ~/.config/regolith
