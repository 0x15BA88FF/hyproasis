return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = require "configs.treesitter"
    },

    {
        "williamboman/mason.nvim",
        opts = require "configs.mason"
    },

    {
        "stevearc/conform.nvim",
        event = 'BufWritePre',
        opts = require "configs.conform"
    },

    {
        "neovim/nvim-lspconfig",
        opts = require "configs.lspconfig"
    }
}
