-- all plugins repo links
return {

    --- which key ( shows key shortcuts )
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
       "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
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

    -- coloscheme catpuccin
    -- {
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     priority = 1000,
    --     config = function ()
    --        require("catppuccin").setup({
    --             flavour = "mocha",
    --             color_overrides = {
    --                 mocha = {
    --                     base = "#191919",
    --                     crust = "#191919",
    --                     mantle = "#191919",
    --                 },
    --             },
    --         })
    --         vim.cmd("colorscheme catppuccin")
    --     end
    --
    -- },

     -- Bufferline
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

    -- Autopairs
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
    },

    -- Language Support
    --  TODO : need to write separate files for autocomplition, snippits and lsp
    {
        'VonHeikemen/lsp-zero.nvim',
        lazy = true,
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig', event = {"BufReadPre", "BufNewFile"}, },
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {
                'hrsh7th/nvim-cmp',
                event = 'InsertEnter',
            },
            {
                'hrsh7th/cmp-nvim-lsp',
                event = 'InsertEnter',
            },
            {
                'hrsh7th/cmp-buffer',
                event = 'InsertEnter'
            },
            {
                'hrsh7th/cmp-path',
                event = 'InsertEnter'
            },
            {
                'saadparwaiz1/cmp_luasnip',
                event = 'InsertEnter',
            },
            {
                'hrsh7th/cmp-nvim-lua',
                event = 'InsertEnter'
            },

            -- Snippets
            {
                'L3MON4D3/LuaSnip',
                event = 'InsertEnter',
                dependencies = {
                    "rafamadriz/friendly-snippets",
                },
            },
        }
    },

    -- new dev ( kind of better completion )
    {
        'folke/neodev.nvim',
        config = function()
            require("neodev").setup({})
        end
    },

    -- telescope ( fuzzy finder for file or text searching )
    {
        'nvim-telescope/telescope.nvim', tag='0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- nvim-surround
    {
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup({})
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
    {
        "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {},
        config = function ()
            require('ibl').setup()
        end
    },

    -- trouble plugin ( shows all erros in entire workspace or current file )
    {
        "folke/trouble.nvim",

        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },

    -- auto-complete-tag
    {
        "windwp/nvim-ts-autotag",
        config = function ()
           require('nvim-ts-autotag').setup()
        end
    }
}
