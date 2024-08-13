-- Lazy
require("config.lazy")

-- Treesitter
require("lazy").setup({{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}})

-- Options
require("mike.core.options")
require("mike.core.keymaps")
require("mike.core.colorscheme")
