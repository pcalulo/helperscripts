set number
set textwidth=80

" This section is from:
" http://stackoverflow.com/questions/1523482/vimrc-configuration-for-python
set nohlsearch
set bg=dark
highlight SpecialKey ctermfg=DarkGray
set listchars=tab:>-,trail:~
set list
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
syntax on
set listchars=tab:>-
set listchars+=trail:.
set ignorecase
set smartcase
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

" Use vim's built-in auto-indent
filetype indent on

" delete four consecutive spaces as if it were a single tab
set softtabstop=4

