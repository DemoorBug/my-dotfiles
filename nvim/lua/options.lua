local cmd = vim.cmd
local opt = vim.opt
local g = vim.g
local o = vim.o
local api = vim.api

g.floaterm_height = 0.99
g.floaterm_width = 0.99
o.nu = true
o.mouse = 'a'
o.modeline = true
o.modelines = 5

o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.relativenumber = true

opt.undofile = true
opt.undodir = "/Users/demoorbug/.config/nvim/.cache/undo/"
opt.ruler = false
opt.hidden = true
opt.ignorecase = true
opt.splitbelow = true
opt.splitright = true
--o.completeopt = 'menuone,noselect'
-- lspsaga
api.nvim_set_keymap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', '<space>ca', '<Cmd>Lspsaga code_action<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', '`', ':FloatermToggle<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('t', '`', '<C-\\><C-n>:FloatermToggle<CR>', { noremap = true, silent = true })

-- api.nvim_set_option('background', 'light')
--api.nvim_set_var('prettier#autoformat', 1)
--api.nvim_set_var('prettier#autoformat_require_pragma', 0)

cmd('colorscheme base16-schemer-medium')
-- cmd('colorscheme NeoSolarized')
-- cmd("let g:prettier#config#trailing_comma = 'all'")
-- cmd("let g:prettier#autoformat = 1")
-- cmd("let g:prettier#autoformat_require_pragma = 0")
-- cmd("let g:prettier#quickfix_enabled = 0")
-- vim.opt.termguicolors = true

-- Use OSX clipboard to copy and to paste
cmd("set clipboard+=unnamedplus")
