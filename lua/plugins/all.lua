return {
    { "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate" },
    { "neovim/nvim-lspconfig",           lazy = false },
    { "mbbill/undotree",                 lazy = false },
    {
        "hrsh7th/nvim-cmp",
        lazy = true,
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
        },
    },
    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
    {
        "cocopon/iceberg.vim",
        lazy = false,
        priority = 1000,
        config = function()
            -- load the colorscheme here
            vim.cmd([[
			colorscheme iceberg
			highlight Normal guibg=none
			highlight NonText guibg=none
			highlight Normal ctermbg=none
			highlight NonText ctermbg=none
			]])
        end,
    },
    {
        "mfussenegger/nvim-dap",
        event = "VeryLazy",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio",
            "theHamsta/nvim-dap-virtual-text"
        },
    },
    {
        "ThePrimeagen/harpoon",
        lazy = true,
        dependencies = {
            "nvim-lua/plenary.nvim",
        }
    },
    {
        'kevinhwang91/nvim-ufo',
        lazy = true,
        dependencies = { 'kevinhwang91/promise-async' }
    },

}
