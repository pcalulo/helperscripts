" For Pathogen
" https://github.com/tpope/vim-pathogen
call pathogen#infect()

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

set mouse=a

" Use vim's built-in auto-indent
filetype indent on

" delete four consecutive spaces as if it were a single tab
set softtabstop=4

" NERDTree stuff
" https://github.com/scrooloose/nerdtree/

" Open NERDTree if no files are specified when Vim was started
autocmd vimenter * if !argc() | NERDTree | endif
" For closing Vim when only the NERDTree window is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

