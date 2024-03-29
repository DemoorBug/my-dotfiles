require 'gitsigns'.setup{
  current_line_blame = true,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol',
    delay = 0,
  }
}

require 'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true
	}
}
require 'toggleterm'.setup{
  open_mapping = [[<a-`>]],
  direction = 'float'
}

vim.cmd('colorscheme github_dark_dimmed')
vim.cmd('filetype plugin indent on')
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.undofile = true

-- Leader key
vim.g.mapleader = ' '

-- Disable mouse
vim.opt.mouse = ''

-- Block cursor always
vim.opt.guicursor = 'i:block'

-- Spell Checker
vim.opt.spell = true

-- quicker update
vim.opt.updatetime = 500

-- Terminal colors
vim.opt.termguicolors = true
vim.g.t_Co = 256

vim.opt.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.opt.pumheight = 10 -- Makes popup menu smaller

vim.opt.fileencoding = 'utf-8' -- The encoding written to file
vim.opt.cmdheight = 1 -- Less space for displaying messages

vim.opt.conceallevel = 0 -- So that I can see `` in markdown files

-- 2-Space Intend
vim.opt.autoindent = true
vim.g.smartintend = true
-- control the number of space characters that will be inserted when the tab key is pressed
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
-- insert space characters whenever the tab key is pressed
vim.o.expandtab = true

-- don't wrap default check `keymaps.lua` for conditional warp for some filetypes
-- disable wrapping for all filetypes
vim.opt.wrap = false

-- search options
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrapscan = true

-- line default relative number
vim.opt.number = true
vim.opt.relativenumber = true

vim.wo.cursorline = true -- Enable highlighting of the current line
vim.wo.signcolumn = 'yes:2' -- Always show the signcolumn, otherwise it would shift the text each time

vim.cmd([[set scrolloff=10]])
vim.cmd([[set sidescrolloff=35]])

vim.o.backup = false -- This is recommended by coc
vim.o.swapfile = false
vim.o.writebackup = false -- This is recommended by coc

-- whitespace characters
vim.wo.list = true
vim.opt.listchars = { tab = '→ ', trail = '•', extends = '»', precedes = '«' }

-- copy and paste with OS clipboard
vim.opt.clipboard = 'unnamedplus'

-- Error formate
vim.bo.errorformat = [[
    %E%f:%l:%c: %trror: %m,%-Z%p^,%+C%.%#
    %D%*a: Entering directory [`']%f
    %X%*a: Leaving directory [`']%f
    %-G%.%#
]]
vim.opt.statusline =
  '  %< %{FugitiveHead()}  %f %m %r %w %= Ln %l, Col %c  %{&fileencoding?&fileencoding:&encoding}  '

-- minimal statusline on start
_G.laststatus = 0
vim.opt.laststatus = _G.laststatus
