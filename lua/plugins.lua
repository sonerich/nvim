return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'terrortylor/nvim-comment'
	require("nvim_comment").setup({line_mapping = "<leader>/"})
end)
