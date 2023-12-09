:set number relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

" Start editing vimrc using ,ev and source using ,sv
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
let mapleader = ","
let g:mapleader = ","
" Use C-u to convert current word to upper case
inoremap <C-u> <ESC>viwUviw<ESC>a
nnoremap <C-u> viwU

" navigate buffers without losing unsaved work
set hidden
" Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

" wrap to next line when end of line is reached
set whichwrap+=<,>,[,]

" Code opens folded for making it easier to see
set foldmethod=syntax

" To be able to see around
set scrolloff=5

" Possible to undo even after closing
set undofile

" Tabs Setup
" Next tab using ,tn
map <leader>tn :tabn<cr>
" Previous tab using ,tp
map <leader>tp :tabp<cr>
" New tab
map <leader>te :tabe 
" Go to Tab
map <leader>gt :tabn 

" AutoCompletion using jj and kk
inoremap jj <C-n>
inoremap kk <C-p>

" Normal Functioning of Y
nnoremap Y Vy

" Use H and L to go to start/end of line
nnoremap H ^
nnoremap L $

nnoremap <ESC><ESC> :nohl<cr>

call plug#begin()



Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
" Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
" Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal 
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'mtikekar/vim-bsv'
Plug 'christoomey/vim-tmux-navigator'

Plug 'chriskempson/base16-vim'
call plug#end()
:colorscheme jellybeans
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <F7>  :tabp<CR>
nnoremap <F8>  :tabn<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
inoremap kj <Esc>
let NERDTreeShowHidden=1

