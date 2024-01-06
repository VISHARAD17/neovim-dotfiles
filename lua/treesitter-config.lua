-- treesitter-config.lua

local configs = require("nvim-treesitter.configs")
configs.setup {
    -- Add a language of your choice
    ensure_installed = {"cpp", "python", "lua", "java", "javascript", "typescript", "html", "json", 'markdown', 'fortran', 'rust' },
    sync_install = false,
    ignore_install = { "" }, -- List of parsers to ignore installing
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = true, --additional lighting using regex if available

    },

    indent = { enable = true, disable = { "yaml" } },
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },
    -- to complete html tags
    autotag = {
        enable = true,
        enable_rename = true,
        enable_close = true,
        filetypes = {'html', 'xml', 'javascript', 'typescript'},
    },
}

-- code folding
local opt = vim.opt

opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.foldenable = false
