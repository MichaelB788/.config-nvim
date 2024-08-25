local opt = vim.o
opt.autochdir = true

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indent
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- split windows
opt.splitright = true
opt.splitbelow = true

-- considers "-" a keyword
-- opt.iskeyword:append('-')
