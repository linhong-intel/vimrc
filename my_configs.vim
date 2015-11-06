" fix meta-keys which generate <Esc>a .. <Esc>z
set <M-j>=j
set <M-k>=k
set ttimeoutlen=5

" show airline symbols, need powerline patched fonts
let g:airline_powerline_fonts = 1
" enable tabline
let g:airline#extensions#tabline#enabled = 1        " enable tabline
let g:airline#extensions#tabline#show_buffers = 0   " not show buffer in tabline
let g:airline#extensions#tabline#show_tabs = 1      " only show tab
let g:airline#extensions#tabline#tab_nr_type = 1    " show tab #
let g:airline#extensions#syntastic#enabled=0


" load cscope.out
cs add ./cscope.out

" Disable mouse for putty console
set mouse=""

" Very useful key map
inoremap jk <esc>

" Re-load .vimrc
nnoremap <leader>ev :vsplit ~/.vim_runtime/my_configs.vim<cr>
nnoremap <leader>sv :source ~/.vim_runtime/my_configs.vim<cr>

" CScope map
nnoremap <C-@>s :cs find s <C-R>=expand("<cword>")<cr><cr>
nnoremap <C-@>g :cs find g <C-R>=expand("<cword>")<cr><cr>
nnoremap <C-@>f :cs find f <C-R>=expand("<cfile>")<cr><cr>
