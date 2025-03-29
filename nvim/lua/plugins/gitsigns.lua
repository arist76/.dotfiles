return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({})

		vim.api.nvim_set_keymap('n', '<leader>ggp', ':Gitsigns preview_hunk<CR>', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('n', '<leader>ggi', ':Gitsigns preview_hunk_inline<CR>', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('n', '<leader>ggr', ':Gitsigns reset_hunk<CR>', { noremap = true, silent = true })	

	end
}
