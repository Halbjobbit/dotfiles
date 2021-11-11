call plug#begin(stdpath('data') . '/plugged')
		Plug 'srcery-colors/srcery-vim'
		Plug 'SirVer/ultisnips'
		Plug 'mhinz/vim-startify'
		Plug 'scrooloose/nerdtree'
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'jiangmiao/auto-pairs'
		Plug 'Yggdroot/indentLine'
		Plug 'rust-lang/rust.vim'
		Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
		Plug 'akinsho/bufferline.nvim'
call plug#end()

" Visual
set showmatch
set number
set cursorline
set bg=dark
set laststatus=2
filetype plugin indent on 
syntax on
" Format
set tabstop=4
set softtabstop=4
set shiftwidth=4
" Functionality
set hlsearch
set incsearch
set mouse=a
set clipboard=unnamed

colorscheme srcery
set termguicolors

lua << EOF
require("bufferline").setup{
	options={
		indicator_icon = '▎',
		modified_icon = '●',
		buffer_close_icon = '',
		close_icon = '',
		left_trunc_marker = '',
		right_trunc_marker = '',
		offsets = {
			{
				filetype = "NERDTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left"
			}
		}
	}
}
EOF
