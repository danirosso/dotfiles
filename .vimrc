source $VIMRUNTIME/defaults.vim

set wrap
set hlsearch
set smartcase
set number
set relativenumber
set splitbelow splitright

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <F6> :setlocal spell! spelllang=en_us<cr>
map <c-F6> :setlocal spell! spelllang=pt_br<cr>

autocmd FileType c map <F4> :w <bar> !clear && gcc -Wall -o ./%:r % && ./%:r <cr>
autocmd FileType cpp map <F4> :w <bar> !clear && g++ -Wall -o ./%:r % && ./%:r <cr>

set laststatus=2
