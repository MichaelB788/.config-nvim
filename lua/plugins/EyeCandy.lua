return {
    -- Treesitter: Boring syntax no more!
    {
        "nvim-treesitter/nvim-treesitter",
        build = function() 
            require("nvim-treesitter.install").update({ with_sync = true })()
        end,
    },

    -- Kanagawa: The best neovim colorscheme
    { "rebelot/kanagawa.nvim" }
}
