" " Enable riddiculously good completion
let g:deoplete#enable_at_startup = 1
let deoplete#tag#cache_limit_size = 50000000
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['buffer', 'file', 'tag', 'ultisnips']
set tags=./.tags;./tags;/
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Index ctags from any project, including those outside Rails
function! ReindexCtags()
  let l:ctags_hook = '$(git rev-parse --show-toplevel)/.git/hooks/ctags'

  if exists(l:ctags_hook)
    exec '!'. l:ctags_hook
  else
    exec "!ctags -R ."
  endif
endfunction

nmap <Leader>ct :call ReindexCtags()<CR>
