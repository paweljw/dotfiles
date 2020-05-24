# Miscellanea
alias tf='tail -f'
alias tmux="TERM=screen-256color-bce tmux"
alias tx="tmux"
alias ups='ps aux | grep'
łups() { ps aux | grep $1 | grep -v grep | awk '{print $2}' | xargs kill }
łups!() { ps aux | grep $1 | grep -v grep | awk '{print $2}' | xargs kill -9 }
alias ip="curl ifconfig.me"

# ripgrep, heh
alias ag='/usr/bin/rg'

alias todo='ag "TODO:"'
alias brr='git switchbranch'
alias gcn='git commit --no-verify -m'

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias td='echo $(date +%Y-%m-%d)'

hash -d p=$HOME/projects
hash -d bp=$HOME/projects/paweljw.github.io/hugo/content/post
hash -d hp=$HOME/projects/housegrimson.rocks/pjw
