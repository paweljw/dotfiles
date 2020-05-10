" Stuff should make sense

set colorcolumn=125
set number

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set nowrap
set backspace=indent,eol,start
set autoindent
set copyindent
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set title
set visualbell
set noerrorbells

set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set cursorline
set showcmd

set pastetoggle=<F2>

" Use one space, not two, after punctuation.
set nojoinspaces

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·
autocmd Filetype go setlocal listchars+=tab:\ \ 

