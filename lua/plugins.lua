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

    -- colorscheme
    -- {
    --     'projekt0n/github-nvim-theme',
    --     lazy = false, -- make sure we load this during startup if it is your main colorscheme
    --     priority = 1000, -- make sure to load this before all the other start plugins
    --     config = function()
    --         require('github-theme').setup({
    --             -- ...
    --         })
    --
    --         vim.cmd('colorscheme github_dark_default')
    --     end,
    -- },

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

    -- nvim-surround ( Manipulating plugins )
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

    -- indent lines
    { 'echasnovski/mini.indentscope', version = '*' },

    -- coloscheme 
    { "rebelot/kanagawa.nvim",
        lazy = false,
        config = function ()
            require("kanagawa").setup({})
            vim.cmd("colorscheme kanagawa-dragon")
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
