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
let g:airline#extensions#tabline#formatter = 'unique_tail'

" disable tmuxline and promptline integration
let g:airline#extensions#tmuxline#enabled = 0
let g:airline#extensions#promptline#snapshot_file = "~/.shell_prompt.sh"
let g:airline#extensions#promptline#enabled = 0
let g:airline#extensions#tmuxline#snapshot_file = "~/.tmux-statusline-colors.conf"

" tmuxline preset
let g:tmuxline_preset = {
    \'a'        :   '#S',
    \'b'        :   '#h',
    \'win'      :   ['#I', '#W'],
    \'cwin'     :   ['#I', '#W'],
    \'y'        :   'WW%U.%u',
    \'z'        :   ['%Y-%m-%d', '%H:%M'],
    \'options'  :   {'status-justify' : 'centre'}}

" promptline preset
let g:promptline_preset = {
    \'a'        :   [ promptline#slices#host() ],
    \'b'        :   [ '$USER'],
    \'c'        :   [ promptline#slices#cwd({'dir_limit':1}) ],
    \'y'        :   [ promptline#slices#vcs_branch() ],
    \'z'        :   [ promptline#slices#python_virtualenv() ],
    \'warn'     :   [ promptline#slices#last_exit_code() ]}

" load cscope.out
cs add ./cscope.out

" Disable mouse for putty console
set mouse=""

" Very useful key map
inoremap jk <esc>
vnoremap jk <esc>

" Re-load .vimrc
nnoremap <leader>ev :vsplit ~/.vim_runtime/my_configs.vim<cr>
nnoremap <leader>sv :source ~/.vim_runtime/my_configs.vim<cr>

" CScope map
nnoremap <C-@>s :cs find s <C-R>=expand("<cword>")<cr><cr>
nnoremap <C-@>g :cs find g <C-R>=expand("<cword>")<cr><cr>
nnoremap <C-@>f :cs find f <C-R>=expand("<cfile>")<cr><cr>

set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set foldcolumn=0

set colorcolumn=81
highlight ColorColumn guibg=#000000 ctermbg=0
