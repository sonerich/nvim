return require('packer').startup(function()

	-- packer
	use 'wbthomason/packer.nvim'

	-- comment/uncomment multiple lines
	use 'terrortylor/nvim-comment'
	require("nvim_comment").setup({
		line_mapping = "<leader>cc",
		operator_mapping = "<leader>c"
	})

	-- treesitter
	use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

	-- nvim-tree (file explorer)
        use "kyazdani42/nvim-tree.lua"

		vim.g.nvim_tree_hide_dotfiles = 1
		vim.g.nvim_tree_indent_markers = 1
		vim.g.nvim_tree_follow = 1
		vim.g.nvim_tree_auto_close = 1
		local tree_cb = require'nvim-tree.config'.nvim_tree_callback
    			vim.g.nvim_tree_bindings = {
				["l"]              = tree_cb("edit"),
				["<2-LeftMouse>"]  = tree_cb("edit"),
				["<2-RightMouse>"] = tree_cb("cd"),
				["<C-]>"]          = tree_cb("cd"),
				["v"]              = tree_cb("vsplit"),
				["s"]              = tree_cb("split"),
				["<C-t>"]          = tree_cb("tabnew"),
				["<"]              = tree_cb("prev_sibling"),
				[">"]              = tree_cb("next_sibling"),
				["<BS>"]           = tree_cb("close_node"),
				["h"]              = tree_cb("close_node"),
				["<S-CR>"]         = tree_cb("close_node"),
				["<Tab>"]          = tree_cb("preview"),
				["I"]              = tree_cb("toggle_ignored"),
				["H"]              = tree_cb("toggle_dotfiles"),
				["R"]              = tree_cb("refresh"),
				["a"]              = tree_cb("create"),
				["d"]              = tree_cb("remove"),
				["r"]              = tree_cb("rename"),
				["<C-r>"]          = tree_cb("full_rename"),
				["x"]              = tree_cb("cut"),
				["c"]              = tree_cb("copy"),
				["p"]              = tree_cb("paste"),
				["[c"]             = tree_cb("prev_git_item"),
				["]c"]             = tree_cb("next_git_item"),
				["-"]              = tree_cb("dir_up"),
				["q"]              = tree_cb("close"),
    		}
	-- telescope - fuzzy finder written in lua and for neovim
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}
	local actions = require('telescope.actions')
	require('telescope').setup{
		defaults={mappings={
			i = {
				-- next/prev selection with ctrl jk
				["<C-n>"] = false,
				["<C-p>"] = false,
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_worse,

				["<C-l>"] = ,
			},
			n = {}
		}}}

end)
