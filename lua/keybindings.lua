local map = vim.api.nvim_set_keymap
nore = { noremap = true }

-- leader key
map('n', '<space>', '', {}) -- unmap space
vim.g.mapleader = ' '

map( 'i', 'jk', '<ESC>', nore)

-- file
map('n', '<leader>fs', ':w<CR>', nore)

-- window
map('n', '<leader>wc', ':close<CR>', nore)
