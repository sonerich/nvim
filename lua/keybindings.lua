local bind = vim.api.nvim_set_keymap
nore = { noremap = true }

-- leader key
bind('n', '<space>', '', {}) -- unmap space
vim.g.mapleader = ' '

bind( 'i', 'jk', '<ESC>', nore)

-- file
bind('n', '<leader>fs', ':w<CR>', nore)

-- window
bind('n', '<leader>wc', ':close<CR>', nore)

-- toggle nvim tree
bind('n', '<leader>fe', ':NvimTreeClose<CR>:NvimTreeOpen<CR>', nore)
