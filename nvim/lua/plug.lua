return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')
  
  -- 选项卡 
  use {
    'kyazdani42/nvim-tree.lua',
    commit = '2dfed89', --1.6.7
    requires = 'kyazdani42/nvim-web-devicons'
  }
  -- emmet
  use { 'mattn/emmet-vim' }
  -- jk kj jj  
  use { 'jdhao/better-escape.vim' }
  -- surround
  use { 'tpope/vim-surround' }
  -- colorscheme
  use { 'RRethy/nvim-base16' }
  -- 高亮
  use {
    'nvim-treesitter/nvim-treesitter',
    commit = 'efedf35',
    run = ':TSUpdate'
  }
  -- lsp
  -- 0.1.2
  use { 'neovim/nvim-lspconfig', commit = 'e7df7ec', }
  -- lspsaga
  use { 'glepnir/lspsaga.nvim', commit = 'cb0e35d' }
  -- indent
  use { 'lukas-reineke/indent-blankline.nvim' }
  -- cmp
  --use { 'hrsh7th/cmp-nvim-lsp' }
  --use { 'hrsh7th/cmp-buffer' }
  --use { 'hrsh7th/nvim-cmp' }
  --use { 'hrsh7th/cmp-vsnip', opt = true }
  --use { 'hrsh7th/vim-vsnip' }
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-vsnip' , opt = true },
    }
  }
  use {
  'hrsh7th/vim-vsnip',
  event = 'InsertCharPre',
  wants = 'friendly-snippets',
  requires = {
      { 'hrsh7th/vim-vsnip-integ' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
  -- lualine
  use {
  'hoob3rt/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  -- telescope
  use {
  'nvim-telescope/telescope.nvim',
  commit = '3a3c9a3',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- autopairs
  use { 'windwp/nvim-autopairs' }
  -- floaterm
  use {
    'voldikss/vim-floaterm'
  }
end)
