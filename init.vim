call plug#begin()
Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme dracula

set number
set tabstop=2
set autoindent
set textwidth=80
set incsearch
set laststatus=2
set confirm
set title
set hidden
set relativenumber
set inccommand=split

map <F12> ggVG
map q :quit<CR>
map <C-q> :q!<CR>
map <C-s> :w<CR>
map <C-o> :NERDTreeToggle<CR>
map <C-p> :Files<cr>
map <c-f> :Ag<space>

syntax enable
