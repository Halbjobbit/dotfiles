local o = vim.o

--[[ Editor ]] --

o.number = true
o.cursorline = true
-- Statusbar: 0: never; 1: only if there are at least two windows; 2: always
o.laststatus = 2

tab = 4
o.tabstop = tab
o.softtabstop = tab
o.shiftwidth = tab

-- highlight search
o.hlsearch = true
-- highlight search while typing
o.incsearch = true

-- enable the mouse in all modes
o.mouse = a

o.encoding = 'utf-8'
o.clipboard = 'unnamedplus'

