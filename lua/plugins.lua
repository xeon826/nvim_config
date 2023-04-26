-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use "nvim-lua/plenary.nvim"
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use {
    'junegunn/fzf.vim',
    requires = { 'junegunn/fzf', run = ':call fzf#install()' }
  }
  use({
    'glepnir/galaxyline.nvim',
    branch = 'main',
    config = function()
      require('nerd-galaxyline')
    end,
    requires = { 'nvim-tree/nvim-web-devicons', opt = false},
  })
  use 'Avimitin/nerd-galaxyline'
  use 'numirias/semshi'
  use 'KarimElghamry/vim-auto-comment'
  use 'natecraddock/nvim-find'
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'ayu-theme/ayu-vim'

  use 'neovim/nvim-lspconfig'

  -- Load on an autocommand event
  use { 'andymass/vim-matchup', event = 'VimEnter' }
  -- [[
  use {
    'w0rp/ale',
    ft = { 'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex' },
    cmd = 'ALEEnable',
    config = 'vim.cmd[[ALEEnable]]'
  }
  use {
    'haorenW1025/completion-nvim',
    opt = true,
    requires = { { 'hrsh7th/vim-vsnip', opt = true }, { 'hrsh7th/vim-vsnip-integ', opt = true } }
  }

  use_rocks 'penlight'
  use_rocks { 'lua-resty-http', 'lpeg' }

  use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview' }
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  use { 'dracula/vim', as = 'dracula' }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      require("nvim-tree").setup {}
    end
  }
end)
