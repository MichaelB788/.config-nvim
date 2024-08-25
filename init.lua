-- Disable netrw for Nvim Tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Lazy
require("config.lazy")

-- Treesitter
require("lazy").setup({
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
})

require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the listed parsers MUST always be installed)
    ensure_installed = {
        "c",
        "c_sharp",
        "cpp",
        "python",
        "lua",
        "typescript",
        "java",
    },

    auto_install = true,

    highlight = {
        enable = true,
    },

    indent = {
        enable = true,
    },
}

-- LSP Zero
local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()

-- Nvim Tree
require("nvim-tree").setup()

-- Options
require("mike.core.options")
require("mike.core.keymaps")
require("mike.core.colorscheme")

