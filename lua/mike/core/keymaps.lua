-- For help on key notation, type :h key-notation

vim.g.mapleader = " "
local builtin = require('telescope.builtin')

-- Telescope
vim.keymap.set('n', 'K', 'gg')
vim.keymap.set('n', 'J', 'G')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- Find files
vim.keymap.set('n', '<leader>fg', builtin.git_files, {}) -- Find files within a git repository.

-- Yank into system clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y') -- yank motion
vim.keymap.set({'n', 'v'}, '<leader>Y', '"+Y') -- yank line

vim.keymap.set({'n', 'v'}, '<leader>a', ':%y+<Enter>') -- yank all

-- Delete into system clipboard
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d') -- delete motion
vim.keymap.set({'n', 'v'}, '<leader>D', '"+D') -- delete line

-- Paste from system clipboard
vim.keymap.set('n', '<leader>p', '"+p')  -- paste after cursor
vim.keymap.set('n', '<leader>P', '"+P')  -- paste before cursor

-- Enter explorer GUI
vim.keymap.set('n', '<leader>e', ':Ex<Enter>') -- Open Explorer in current tab
vim.keymap.set('n', '<leader>t', ':tabnew | :Ex <Enter>') -- Open Explorer in a new tab

-- Write and Quit
vim.keymap.set({'n', 'v'}, '<leader>w', ':wall<Enter>') -- Write all
vim.keymap.set({'n', 'v'}, '<leader>q', ':q!<Enter>') -- Write and close the current tab

-- Autocomplete
vim.keymap.set('i', '<C- >', '<C-p>')

-- Insert Mode commands
vim.keymap.set('i', '<C-h>', '<Left>') -- Move cursor left
vim.keymap.set('i', '<C-j>', '<Down>') -- Move cursor down
vim.keymap.set('i', '<C-k>', '<Up>') -- Move cursor up 
vim.keymap.set('i', '<C-l>', '<Right>') -- Move cursor right

vim.keymap.set('i', '<C-d>', '<Del>') -- Delete key

-- Markdown
vim.keymap.set('n', 'mp', ':MarkdownPreview<Enter>') -- Enter preview

-- Misc.
vim.keymap.set('n', '<leader>M', ':e ++ff=dos<Enter>') -- Clear the ^M's after paste
vim.keymap.set('n', 'tg', 'gT') -- Reverse switch tabs

