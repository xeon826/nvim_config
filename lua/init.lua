-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  open_on_tab = true,
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
-- require'lspconfig'.pylyzer.setup{}
-- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
-- vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
-- 
-- vim.api.nvim_create_autocmd('LspAttach', {
--   group = vim.api.nvim_create_augroup('UserLspConfig', {}),
--   callback = function(ev)
--     vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
--     local opts = { buffer = ev.buf }
--     vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
--     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
--     vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
--     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
--     vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
--     vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
--     vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
--     vim.keymap.set('n', '<space>wl', function()
--       print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--     end, opts)
--     vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
--     vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
--     vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
--     vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
--     vim.keymap.set('n', '<space>f', function()
--       vim.lsp.buf.format { async = false }
--     end, opts)
--   end,
-- })

-- require("nvim-find.config").setup({
-- 	height = 20,
-- 	width = 100,
-- 	files={ignore = {'/vendor/*','.git/*','node_modules/*','/venv/*'}},
-- 	search={start_closed = false}
-- })
-- local cf = require("nvim-find.config")

-- maximum height of the finder
-- cf.height = 20

-- maximum width of the finder
-- cf.width = 100

-- list of ignore globs for the filename filter
-- e.g. "*.png" will ignore any file ending in .png and
-- "*node_modules*" ignores any path containing node_modules
-- cf.files.ignore = {}

-- start with all result groups collapsed
-- cf.search.start_closed = false

local diagnostic = require('galaxyline.provider_diagnostic')
local vcs = require('galaxyline.provider_vcs')
local fileinfo = require('galaxyline.provider_fileinfo')
local extension = require('galaxyline.provider_extensions')
local colors = require('galaxyline.colors')
local buffer = require('galaxyline.provider_buffer')
local whitespace = require('galaxyline.provider_whitespace')
local lspclient = require('galaxyline.provider_lsp')

require('galaxyline').section.left[1] = {
  FileSize = {
    provider = 'FileSize',
    condition = function()
      if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
        return true
      end
      return false
    end,
    icon = '   ',
    highlight = { colors.green, colors.purple },
    separator = '',
    separator_highlight = { colors.purple, colors.darkblue },
  },
}
-- vim.api.nvim_set_keymap(
--  "n",
--  "<C-/>",
--  ":AutoInlineComment<CR>",
--   { noremap = true }
-- )
-- vim.api.nvim_set_keymap(
--  "x",
--  "<C-/>",
--  ":AutoBlockComment<CR>",
--   { noremap = true }
-- )
