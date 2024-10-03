return {
    -- img-clip: For lazy people like me who don't like saving their 
    -- images manually
    {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            {
                "<leader>p", "<cmd>PasteImage<cr>",
                desc = "Paste image from system clipboard"
            },
        },
    },

    -- Markdown preview
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    }
}
