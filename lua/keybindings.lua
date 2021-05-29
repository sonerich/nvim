local bind = vim.api.nvim_set_keymap
nore = { noremap = true }

-- leader key
bind('n', '<space>', '', {}) -- unmap space
vim.g.mapleader = ' '

bind( 'i', 'jk', '<ESC>', nore)

-- files
bind('n', '<leader>fs', ':w<CR>', nore)
--- telescope
bind('n', '<leader>fg', ':Telescope live_grep<CR>', nore)
bind('n', '<leader>fb', ':Telescope buffers<CR>', nore)
bind('n', '<leader>fh', ':Telescope help_tags<CR>', nore)
bind('n', '<leader>fd', ':Telescope find_files<CR>', nore)
-- alternative, still not sure if I prefer this over <leader>fd
-- bind('n', '<leader>/', ':Telescope find_files<CR>', nore)
--- NvimTree
bind('n', '<leader>fe', ':NvimTreeToggle<CR>', nore)

-- window
bind('n', '<leader>wc', ':close<CR>', nore)


-- tabs
bind('n', '<leader>wt', ':tabnew<CR>', nore)
bind('n', '<tab>', 'gt', nore)
bind('n', '<S-tab>', 'gT', nore)
