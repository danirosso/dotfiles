source $VIMRUNTIME/defaults.vim

set laststatus=2
set wrap
set hlsearch
set smartcase
set number
set relativenumber
set splitbelow
set splitright

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <F11> <C-w>5<
map <F12> <C-w>5>
map <F9> gT
map <F10> gt
map <C-c> :w !xclip -i -selection clipboard<CR><CR>

map <F6> :nohl <cr>
map <c-F6> :setlocal spell! spelllang=en_us<cr>
map <a-F6> :setlocal spell! spelllang=pt_br<cr>

autocmd FileType c map <F4> :w <bar> :vertical terminal ++shell clear && gcc -Wall -o ./%:r % && ./%:r<cr>
autocmd FileType cpp map <F4> :w <bar> :vertical terminal ++shell clear && g++ -Wall -o ./%:r % && ./%:r<cr>
