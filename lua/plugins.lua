-- all plugins repo links
return {

    --- which key
    {
        "folke/which-key.nvim",
        lazy = true,
    },

    -- lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    -- treesitter
    {
       "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
    },

    -- nvim tree ( file explorer)
    {
        'nvim-tree/nvim-tree.lua',
        lazy = true,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },

    -- colorScheme
    {
        'Mofiqul/vscode.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            -- vim.o.background = 'dark'
            -- For light theme
            -- vim.o.background = 'light'

            local c = require('vscode.colors').get_colors()
            require('vscode').setup({
                -- Alternatively set style in setup
                style = 'dark',

                -- Enable transparent background
                transparent = false,

                -- Enable italic comment
                italic_comments = false,

                -- Disable nvim-tree background color
                disable_nvimtree_bg = false,

                -- Override colors (see ./lua/vscode/colors.lua)
                -- color_overrides = {
                --     vscLineNumber = '#FFFFFF',
                -- },

                -- Override highlight groups (see ./lua/vscode/theme.lua)
                group_overrides = {
                    -- this supports the same val table as vim.api.nvim_set_hl
                    -- use colors from this colorscheme by requiring vscode.colors!
                    Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
                }
            })
            require('vscode').load()
        end,
    },

     -- Bufferline
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

    -- Autopais
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
    },

    -- Language Support
    {
        'VonHeikemen/lsp-zero.nvim',
        lazy = true,
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    },

    -- telescope
    {
        'nvim-telescope/telescope.nvim', tag='0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- nvim-surround
    {
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },

    -- comment plugin
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    },

    -- gitsign plugin
    {
        "lewis6991/gitsigns.nvim",
    },

    -- indentation lines
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {},
        config = function ()
            require('ibl').setup()
        end
    },

    -- trouble 
    {
        "folke/trouble.nvim",

        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    }
}
