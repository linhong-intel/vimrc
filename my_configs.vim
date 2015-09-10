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


" load cscope.out
cs add ./cscope.out
