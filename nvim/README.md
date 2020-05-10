# Nvim

My neovim configuration.

## Install Neovim

```
brew install neovim/neovim/neovim
```

## Install vim-plug

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Install this config

```
mkdir ~/.config
git clone git@github.com:paweljw/nvim.git ~/.config/nvim
```

## Install plugins

```
:PlugInstall
```

Optionally also run :CheckHealth to see if all providers are in order.
