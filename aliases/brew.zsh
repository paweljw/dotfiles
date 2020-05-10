# TODO: Disable under Linux

BREW_DROPBOX="$HOME/Dropbox/Brewfile"
BREW_BUNDLE="$HOME/Brewfile"

alias brlink='rm "$BREW_BUNDLE" && ln -s "$BREW_DROPBOX" "$BREW_BUNDLE"'
alias brsync="cd ~ && brew bundle && cd -"

function bri() { brew install $1 && cd ~ && brew bundle dump -f && cd - }
