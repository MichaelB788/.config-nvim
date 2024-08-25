-- For help on key notation, type :h key-notation
-- Globals
vim.g.mapleader = " "

local km = vim.keymap;
local builtin = require('telescope.builtin')

-- Plugin Keymaps
-- Telescope
km.set('n', '<leader>ff', builtin.find_files, {}) -- Find ALL files
km.set('n', '<leader>fg', builtin.git_files, {}) -- Find files within a git repository.

-- nvim-tree
km.set('n', '<leader>e', ':NvimTreeFindFileToggle<Enter>') -- Toggle tree (find files within current directory)
km.set('n', '<leader><BS>', ':NvimTreeCollapse<Enter>') -- Collapse tree

km.set('n', '<leader>t', ':tabnew | :NvimTreeToggle<Enter>') -- Open a new tab with tree opened.
km.set('n', 'sp', ':vsplit | :NvimTreeToggle<Enter>') -- Split the window with tree opened.

-- Markdown
km.set('n', 'mp', ':MarkdownPreview<Enter>') -- Enter preview

-- Trouble
km.set('n', 'to', ':Trouble diagnostics <Enter>') -- Open diagnostics
km.set('n', 'tp', ':Trouble diagnostics close<Enter>') -- Open diagnostics

km.set('n', 'qf', ':Trouble quickfix<Enter>') -- Quickfix 


-- Editor keymaps

-- Yank into system clipboard
km.set('n', 'yy', '"+Y') -- normal mode; yank single line
km.set('v', 'yy', '"+y') -- yank visual motion
km.set('n', '<leader>a', ':%y+<Enter>') -- yank all

-- Paste from system clipboard
km.set('n', 'p', '"+p')  -- paste after cursor
km.set('n', 'P', '"+P') -- paste before cursor

-- Cut motion
km.set('v', 'd', '"+d"')

-- Write and Quit
km.set({'n', 'v'}, '<leader>w', ':wall<Enter>') -- Write all
km.set({'n', 'v'}, '<leader>q', ':q!<Enter>') -- Close the current tab

-- Insert Mode commands
km.set('i', '<C-h>', '<Left>') -- Move cursor left
km.set('i', '<C-j>', '<Down>') -- Move cursor down
km.set('i', '<C-k>', '<Up>') -- Move cursor up 
km.set('i', '<C-l>', '<Right>') -- Move cursor right

km.set('i', '<C-d>', '<Del>') -- Delete key

-- Misc.
km.set('n', '<leader>M', ':e ++ff=dos<Enter>') -- Reread the document using dos
km.set('n', 'tg', 'gT') -- Reverse switch tabs
km.set('n', 'w', '<C-w>') -- Window toggle
