local o = vim.o
local keyset = vim.keymap.set

-- [[ Autocompletion ]] --
o.signcolumn = "yes"
o.updatetime = 300


-- [[ Keymap
--
-- Manual activation:		Ctrl + Space
-- Next Entry:				Tab
-- Previous Entry:			Shift + Tab
-- Trigger completion:		Enter (<CR>)
--
--
--
--
--
--
-- ]] --


-- Autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

keyset("i", "<c-space>", 'coc#refresh()', { silent = true, expr = true }) 

