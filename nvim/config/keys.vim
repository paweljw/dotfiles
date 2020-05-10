" Map the glorious leader
let mapleader = "\<Space>"

nnoremap <Leader>w :w<CR>
nnoremap <Leader>u :u<CR>
nnoremap <Leader>q :q<CR>

nmap <Leader><Leader> V

" vim-commentary stuff
nmap <Leader>cc <Plug>CommentaryLine

" moving lines
nnoremap J :m .+1<CR>
nnoremap K :m .-2<CR>

xnoremap J :m .+1<CR>
xnoremap K :m .-2<CR>

nnoremap vv :vsplit<Space>

nmap <Leader>rm :!rm -rf<Space>
nmap <Leader>mm :!mkdir -p<Space>

inoremap jj <Esc>

nmap <Leader>te :tabedit<Space>
