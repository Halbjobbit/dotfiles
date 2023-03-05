local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

	-- General
	Plug 'preservim/nerdtree'

	-- Util
	Plug 'svermeulen/vim-cutlass' -- util for deleting to void register

	-- Theming
	Plug 'ryanoasis/vim-devicons'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'srcery-colors/srcery-vim'

	-- Visual details
	Plug 'yggdroot/indentLine'

	-- Autocomplete
	Plug('neoclide/coc.nvim', { branch = 'release'})

vim.call('plug#end')

require('config')
require('theme')
require('coc')

