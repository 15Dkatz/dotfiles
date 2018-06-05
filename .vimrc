color pablo
syntax on

set backspace=indent,eol,start
set tabstop=2
set textwidth=80
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
