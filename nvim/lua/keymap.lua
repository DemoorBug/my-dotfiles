local function map(mode, bind, exec, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, bind, exec, opts)
end

local opt = {} --empty opt for maps with no extra options

vim.g.mapleader = ' '

map('', '<C-b>', ':NvimTreeToggle<CR>', opt)
map('', '<C-s>', ':w<CR>', opt)
map('', '<C-e>', '<C-y>,', opt)

local noremap = { noremap = true, silent = true }
-- Telescope
map('', '<C-f>', ':Telescope find_files<CR>', noremap)
map('', '<C-l>', ':Telescope live_grep<CR>', noremap)
-- buffers help_tags
--map('', '<C-e>', '<C-y>,', opt)
--map('', '', '<C-y>,', opt)
--map('', '', '<C-y>,', opt)

map('n', '<leader>d', '\"_d', noremap )
map('v', '<leader>d', '\"_d', noremap )
map('n', '<leader>x', '\"_x', noremap )
map('v', '<leader>x', '\"_x', noremap )
map('n', '<leader>c', '\"_c', noremap )
map('v', '<leader>c', '\"_c', noremap )

