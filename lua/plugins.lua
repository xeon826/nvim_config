-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use "nvim-lua/plenary.nvim"
  use "tpope/vim-fugitive"
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
--   use {
--     'junegunn/fzf.vim',
--     requires = { 'junegunn/fzf', run = ':call fzf#install()' }
--   }
--   use = { 'junegunn/fzf', run = './install --bin' }
  use { 'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'nvim-tree/nvim-web-devicons' }
  }
  use {'romgrk/barbar.nvim', requires = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  }}
  use 'mhartington/formatter.nvim'
-- themes
  use 'nyoom-engineering/oxocarbon.nvim'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use 'numirias/semshi'
  use 'tpope/vim-commentary'
  use 'nvim-telescope/telescope.nvim'
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }


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
