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

~/bin/rdp:
	ln -fs ~/.dotfiles/rdp ~/bin/rdp

~/bin/water:
	ln -fs ~/.dotfiles/water ~/bin/water

~/bin/thirsty:
	ln -fs ~/.rbenv/shims/thirsty ~/bin/thirsty

custom_scripts: ~/bin/rdl ~/bin/water ~/bin/thirsty ~/bin/rdp

~/.config/dunst:
	ln -fs ~/.dotfiles/dunst ~/.config/dunst

dunst: ~/.config/dunst

~/.doom.d:
	ln -fs ~/.dotfiles/doom.d ~/.doom.d

doomemacs: ~/.doom.d

all: zshrc tmux git gem alacritty nvim regolith custom_scripts dunst doomemacs
