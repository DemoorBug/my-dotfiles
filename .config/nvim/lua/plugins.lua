
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function (use)
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}
  use 'wbthomason/packer.nvim'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use({'projekt0n/github-nvim-theme'})
  use 'lewis6991/gitsigns.nvim'
  -- use {'neoclide/coc.nvim', branch = 'release'}

end)
