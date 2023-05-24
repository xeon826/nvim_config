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
  update_focused_file = {
      enable = true
  },
  open_on_tab = true,
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

 require'lspconfig'.pyright.setup{}
 vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
 vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
 vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
 vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
 
 vim.api.nvim_create_autocmd('LspAttach', {
   group = vim.api.nvim_create_augroup('UserLspConfig', {}),
   callback = function(ev)
     vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
     local opts = { buffer = ev.buf }
     vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
     vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
     vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
     vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
     vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
     vim.keymap.set('n', '<space>wl', function()
       print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
     end, opts)
     vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
     vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
     vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
     vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
     vim.keymap.set('n', '<space>f', function()
       vim.lsp.buf.format { async = false }
     end, opts)
   end,
 })
 --
 --
 --
--
--
-- Utilities for creating configurations
-- local util = require "formatter.util"
-- require("formatter").setup {
--   logging = true,
--   log_level = vim.log.levels.WARN,
--   filetype = {
--     lua = {
--       require("formatter.filetypes.lua").stylua,

--       function()
--         if util.get_current_buffer_file_name() == "special.lua" then
--           return nil
--         end

--         return {
--           exe = "stylua",
--           args = {
--             "--search-parent-directories",
--             "--stdin-filepath",
--             util.escape_path(util.get_current_buffer_file_path()),
--             "--",
--             "-",
--           },
--           stdin = true,
--         }
--       end
--     },
--     typescript = {
-- 	    require("formatter.filetypes.typescriptreact").prettierd,
-- 	    function()
-- 		    return {
-- 			    exe = "prettierd",
-- 			    args = {
-- 				    util.escape_path(util.get_current_buffer_file_path())
-- 			    }
-- 		    }
--  	    end
--     },
--     python = {
-- 	    require("formatter.filetypes.python").yapf,
-- 	    function()
-- 		    return {
-- 			    exe = "yapf",
-- 			    args = {
-- 				    util.escape_path(util.get_current_buffer_file_path())
-- 			    }
-- 		    }
--             end
--     },

--     ["*"] = {
--       require("formatter.filetypes.any").remove_trailing_whitespace
--     }
--   }
-- }
require('lualine').setup {
    sections = {
      lualine_c = {
        {
          'filename',
          file_status = true, -- displays file status (readonly status, modified status)
          path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
        }
      }
    }
}
require('fzf-lua').setup({'fzf-native'})

