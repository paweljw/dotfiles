# Aliases

alias dre="cd ~/.dotfiles; make; source ~/.dotfiles/aliases/bootstrap.zsh; cd -"
alias dpu='cd ~/.dotfiles && git add . && git commit -m "Changed dotfiles @ `date`" && git push origin master; cd -'
alias ded='nvim ~/.dotfiles'
alias dpl='cd ~/.dotfiles && git pull && cd -'

alias pdev="$GOPATH/bin/puma-dev"
