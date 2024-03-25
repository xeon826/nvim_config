-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'jwalton512/vim-blade'
	use 'ekalinin/Dockerfile.vim'
	use 'EmranMR/tree-sitter-blade'
	use "nvim-lua/plenary.nvim"
	use "tpope/vim-fugitive"
	use 'rhysd/conflict-marker.vim'
	use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
	--   use {
	--     'junegunn/fzf.vim',
	--     requires = { 'junegunn/fzf', run = ':call fzf#install()' }
	--   }
	--   use = { 'junegunn/fzf', run = './install --bin' }
	-- use {'pappasam/coc-jedi', branch = 'main', run = 'yarn install --frozen-lockfile && yarn build'}
	use { 'ibhagwan/fzf-lua',
		-- optional for icon support
		requires = { 'nvim-tree/nvim-web-devicons' }
	}
	use { 'neoclide/coc.nvim', branch = 'release' }
	use { 'romgrk/barbar.nvim', requires = {
		'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
		'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
	} }
	-- use 'mhartington/formatter.nvim'
	-- themes
	use 'nyoom-engineering/oxocarbon.nvim'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	-- use 'numirias/semshi'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}


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
		ft = { 'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'markdown', 'racket', 'vim', 'tex' },
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

	use { 'tenfyzhong/autoflake.vim', run = 'pip install autoflake' }
	use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview' }
	use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
	use {
		'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
		config = function() require('gitsigns').setup() end
	}

	use { 'dracula/vim', as = 'dracula' }
	use 'powerman/vim-plugin-AnsiEsc'

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
