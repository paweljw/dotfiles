.DEFAULT_GOAL = all

~/.zshrc:
	ln -fs ~/.dotfiles/zshrc ~/.zshrc

zshrc: ~/.zshrc

~/.tmux.conf:
	ln -fs ~/.dotfiles/tmux.conf ~/.tmux.conf

~/.tmux.conf.local:
	ln -fs ~/.dotfiles/tmux.conf.local ~/.tmux.conf.local

tmux: ~/.tmux.conf ~/.tmux.conf.local

~/.gitconfig:
	ln -fs ~/.dotfiles/gitconfig ~/.gitconfig

~/.gitignore_global:
	ln -fs ~/.dotfiles/gitignore_global ~/.gitignore_global

git: ~/.gitconfig ~/.gitignore_global

~/.gemrc:
	ln -fs ~/.dotfiles/gemrc ~/.gemrc

gem: ~/.gemrc

~/.config/alacritty:
	ln -fs ~/.dotfiles/alacritty ~/.config/alacritty

alacritty: ~/.config/alacritty

~/.config/nvim:
	ln -fs ~/.dotfiles/nvim ~/.config/nvim

nvim: ~/.config/nvim
	nvim --headless +PlugInstall +qa

~/.config/regolith:
	ln -fs ~/.dotfiles/regolith ~/.config/regolith

regolith: ~/.config/regolith

~/bin/rdl:
	ln -fs ~/.dotfiles/rdl ~/bin/rdl

custom_scripts: ~/bin/rdl

all: zshrc tmux git gem alacritty nvim regolith custom_scripts
