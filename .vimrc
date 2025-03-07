color shine
syntax on

set backspace=indent,eol,start
set tabstop=2
set textwidth=80
set colorcolumn=80
set winwidth=81
set shiftwidth=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set ttyfast
set ruler
set showmatch
set number
set smartcase "case-insensitive if all lowercase, case-sensitive otherwise"

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Expand current directory with '%%'.
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Copy absolute path of working file to clipboard.
cnoremap fp let @+ = expand('%:p')<cr>

:filetype on
au FileType gitcommit set tw=81
