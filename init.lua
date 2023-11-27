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
require('colorscheme')
require('bufferline-config')
require('autopairs-config')
require('toggleterm-config')
require('telescope-config')
require('lsp-config')

-- diagnostics msgs
require('diagnostics')


-- loading few configs
require('nvim-tree').setup()
require('Comment').setup()

print("------------- Visharad NVIM-----------------")
