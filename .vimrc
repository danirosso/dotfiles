source $VIMRUNTIME/defaults.vim

set laststatus=2
 
set wrap
 
set hlsearch
set smartcase
 
set number
set relativenumber
 
set splitbelow
set splitright

set autoindent
set smartindent
filetype plugin indent on

nnoremap <F11> <C-w>5<
nnoremap <F12> <C-w>5>
nnoremap <c-F11> <c-w>5-
nnoremap <c-F12> <c-w>5+
nnoremap <F9> gT
nnoremap <F10> gt

nnoremap <c-k> :m -2<CR>
nnoremap <c-j> :m +1<CR>
nnoremap <c-o> o <esc>

nnoremap <F6> :nohl <cr>
nnoremap <c-F6> :setlocal spell! spelllang=en_us<cr>
nnoremap <a-F6> :setlocal spell! spelllang=pt_br<cr>
nnoremap <F7> z= 

autocmd FileType c nnoremap <F4> :w <bar> :vertical terminal++shell clear && gcc -Wall -o ./%:r % && ./%:r<cr>
autocmd FileType cpp nnoremap <F4> :w <bar> :vertical terminal++shell clear && g++ -Wall -o ./%:r % && ./%:r<cr>
