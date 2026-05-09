set number
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set ignorecase
set smartcase
set scrolloff=10
set colorcolumn=80
set cursorline
set splitbelow
set splitright
set backspace=indent,eol,start
set noswapfile
set termguicolors
set hlsearch
set incsearch

colorscheme habamax

nnoremap :W :w<CR>
nnoremap <silent> <CR> :nohlsearch<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let &t_SI = "\e[6 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"
