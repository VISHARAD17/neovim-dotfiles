-- importing from lua directory all the configs related to the plugins
-- file explorer

require('options')
require('keymaps')

-- configs
require('lazy-config')
require('whichkey-config')
require('lualine-config')
require('nvim-tree-config')
require('treesitter-config')
-- require('colorscheme')
require('bufferline-config')
require('autopairs-config')
require('telescope-config')
require('lsp-config')
require('gitsigns-config')

-- diagnostics msgs ( no hints )
require('diagnostics')


-- loading few configs
require('nvim-tree').setup()
require('Comment').setup()

-- require('nvim-treesitter').setup()
-- require("nvim-treesitter.configs").setup{
--     autotag = {
--         enable = true,
--     }
-- }
require("nvim-surround").setup()
require('mini.indentscope').setup()
