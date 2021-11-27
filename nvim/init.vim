call plug#begin(stdpath('data') . '/plugged')
	Plug 'srcery-colors/srcery-vim'
	Plug 'preservim/nerdtree'
	Plug 'ryanoasis/vim-devicons'
call plug#end()

set showmatch
set number
set cursorline
set bg=dark
set laststatus=2
filetype plugin indent on 
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set hlsearch
set incsearch
set mouse=a
set clipboard=unnamed

colorscheme srcery
set termguicolors

nmap <silent> <C-d> :NERDTreeToggle<CR>
