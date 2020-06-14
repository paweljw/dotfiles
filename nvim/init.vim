call plug#begin('~/.local/share/nvim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'
Plug 'cohama/lexima.vim'
Plug 'rking/ag.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'alvan/vim-closetag'
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go'
Plug 'sirtaj/vim-openscad'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'chriskempson/base16-vim'
Plug 'vim-crystal/vim-crystal'
call plug#end()

syntax on
filetype plugin indent on

set noerrorbells
set novisualbell

let g:indentLine_char = '│'
let g:indentLine_first_char = '│'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_bgcolor_term = 1

set lazyredraw

if has('nvim')
   set ttimeout
   set ttimeoutlen=0
endif

let g:airline_powerline_fonts = 1

" I am a weak man
set mouse=a

" Clipboard stuff
set clipboard+=unnamedplus

" Segmented configs
source ~/.config/nvim/config/defaults.vim
source ~/.config/nvim/config/keys.vim
source ~/.config/nvim/config/die-arrows-die.vim
source ~/.config/nvim/config/tabs.vim
source ~/.config/nvim/config/splits.vim
source ~/.config/nvim/config/ctrlp.vim
source ~/.config/nvim/config/coc.vim

" GitGutter stuff
let g:gitgutter_sign_modified = '•'
let g:gitgutter_sign_added = '+'
highlight GitGutterAdd guifg = '#A3E28B'

" SilverSearcher is Ripgrep
let g:ag_prg="/usr/bin/rg --vimgrep"
nnoremap \ :Ag<SPACE>

" Local nvim config
if filereadable(expand("~/.config/nvim/config/local.vim"))
  source ~/.config/nvim/config/local.vim
endif

" Toggle the tree
nnoremap <Leader>k :NERDTreeToggle<CR>

" Chill with the folding, jeeze
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0

" Autoclosing HTML tags
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.vue"

set colorcolumn=125

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let base16colorspace=256
set termguicolors     " enable true colors support
set background=light
" colorscheme base16-onedark
colorscheme base16-solarized-light

let g:airline_theme='bubblegum'

set guifont=FiraCode\ Nerd\ Font:h22

let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'
