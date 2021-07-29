call plug#begin()
Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
call plug#end()

colorscheme dracula

set encoding=UTF-8
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

" Terminal Function
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
  if win_gotoid(g:term_win)
    hide
  else
    botright new
    exec "resize " . a:height
    try
      exec "buffer " . g:term_buf
    catch
      call termopen($SHELL, {"detach": 0})
      let g:term_buf = bufnr("")
	    set nonumber
		  set norelativenumber
		  set signcolumn=no
		endtry
	  startinsert!
	  let g:term_win = win_getid()
  endif
endfunction

" Toggle terminal on/off (neovim)
nnoremap <C-t> :call TermToggle(12)<CR>
inoremap <C-t> <Esc>:call TermToggle(12)<CR>
tnoremap <C-t> <C-\><C-n>:call TermToggle(12)<CR>

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>"
