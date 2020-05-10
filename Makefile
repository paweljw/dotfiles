.DEFAULT_GOAL = all

zshrc: ~/.zshrc
	ln -fs ~/.dotfiles/zshrc ~/.zshrc

tmux: ~/.tmux.conf ~/.tmux.conf.local
	ln -fs ~/.dotfiles/tmux.conf ~/.tmux.conf
	ln -fs ~/.dotfiles/tmux.conf.local ~/.tmux.conf.local

git: ~/.gitconfig ~/.gitignore_global
	ln -fs ~/.dotfiles/gitconfig ~/.gitconfig
	ln -fs ~/.dotfiles/gitignore_global ~/.gitignore_global

gem: ~/.gemrc
	ln -fs ~/.dotfiles/gemrc ~/.gemrc

alacritty: ~/.config/alacritty
	ln -fs ~/.dotfiles/alacritty ~/.config/alacritty

nvim: ~/.config/nvim
	ln -fs ~/.dotfiles/nvim ~/.config/nvim
	nvim --headless +PlugInstall +qa

regolith: ~/.config/regolith
	ln -fs ~/.dotfiles/regolith ~/.config/regolith

all: zshrc tmux git gem alacritty nvim regolith
