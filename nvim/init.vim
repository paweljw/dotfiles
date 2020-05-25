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
Plug 'alvan/vim-closetag'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'srcery-colors/srcery-vim'
Plug 'fatih/vim-go'
Plug 'crusoexia/vim-monokai'
Plug 'juanedi/predawn.vim'
Plug 'sirtaj/vim-openscad'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'chriskempson/base16-vim'
Plug 'mattn/emmet-vim'
call plug#end()

"let g:deoplete#enable_at_startup = 1

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
"source ~/.config/nvim/config/neomake.vim
"source ~/.config/nvim/config/deoplete.vim
"source ~/.config/nvim/config/fizzbuzz.vim
source ~/.config/nvim/config/coc.vim

" GitGutter stuff
let g:gitgutter_sign_modified = '•'
let g:gitgutter_sign_added = '❖'
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
let delimitMate_excluded_ft = "html,vue"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set colorcolumn=125

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" let g:coc_snippet_next = '<tab>'

let base16colorspace=256
set termguicolors     " enable true colors support
set background=dark
colorscheme base16-onedark
let g:airline_theme='bubblegum'
