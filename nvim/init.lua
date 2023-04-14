local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

	-- General
	Plug 'nvim-tree/nvim-tree.lua'
	Plug 'nvim-tree/nvim-web-devicons'

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
require('files')
require('theme')
require('coc')
