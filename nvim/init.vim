call plug#begin(stdpath('data') . '/plugged')
	" General
	Plug 'preservim/nerdtree'

	" Theming
	Plug 'ryanoasis/vim-devicons'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'srcery-colors/srcery-vim'

	Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'moll/vim-bbye'
call plug#end()

filetype plugin on
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
au BufRead,BufNewFile *.cm set syntax=cm
set encoding=utf-8

colorscheme srcery
set termguicolors

nmap <silent> <C-d> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Move lines up or down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Bufferline
lua << EOF
require("bufferline").setup{
	options = {
		offsets = {
			{
			    filetype = "nerdtree",
			    text = "File Explorer",
			    highlight = "Directory",
			    text_align = "left"
			}
		}
	}
}
EOF
nnoremap <silent><C-]> :BufferLineCycleNext<CR>
nnoremap <silent><C-[> :BufferLineCyclePrev<CR>
nnoremap <silent><C-A-w> :Bdelete<CR>

"Config from coc-docs
set hidden
set nobackup
set nowritebackup

set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=number

let g:coc_global_extensions = ['coc-json', 'coc-pairs', 'coc-tsserver', 'coc-sh', 'coc-rust-analyzer', 'coc-vetur', 'coc-html', 'coc-css']

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Keymap
" K:				Docs
" f:				Format document
" Ctrl + Space:		Show completions
" Tab / Shift + Tab Next / Previous
" Ctrl + A			Diagnostics	

" formatting
nmap <silent>f <Plug>(coc-format)

" documentation
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" menu navigation 
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent><nowait> <C-a>  :<C-u>CocList diagnostics<cr>
