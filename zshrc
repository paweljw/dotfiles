# Path to your oh-my-zsh installation.
export TERM=xterm-256color
export ZSH=/home/pjw/.dotfiles/oh-my-zsh
export PATH=/home/pjw/bin:$PATH
ZSH_THEME="Predawn"
COMPLETION_WAITING_DOTS="true"
autoload bashcompinit
bashcompinit

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source /home/pjw/.dotfiles/aliases/bootstrap.zsh

export LANG=pl_PL.UTF-8
export LC_ALL=pl_PL.UTF-8

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ERL_AFLAGS="-kernel shell_history enabled"

. /home/pjw/.dotfiles/z.sh

export PATH="$HOME/.yarn/bin:$PATH:/usr/local/sbin"

export PATH="/home/pjw/.rbenv/bin:/home/pjw/.rbenv/shims:${PATH}"
export RBENV_SHELL=zsh
command rbenv rehash 2>/dev/null


PATH=$PATH:~/.local/bin
PATH="$HOME/esp/xtensa-esp32-elf/bin:$PATH"
IDF_PATH="$HOME/esp/esp-idf"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
export SCREENDIR=$HOME/.screen
export GOPATH=$HOME/go
