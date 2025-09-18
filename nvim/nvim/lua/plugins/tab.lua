return {
	"akinsho/bufferline.nvim",
	requires = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				show_tab_indicators = false,
				themable = true,
				diagnostics = "nvim_lsp",
				separator_style = "slope", -- | "slope" | "slant"| "thin" | "thick" | { 'any', 'any' },
				-- sort_by = "insert_after_current",
				style_preset = bufferline.style_preset.minimal,
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						text_align = "left",
						separator = false,
					},
				},
			},
		})

		vim.api.nvim_set_keymap("n", "<leader>w", ":BufferLinePickClose<CR>", { noremap = true, silent = true })

		-- change buffers left and right
		vim.keymap.set("n", "L", ":bnext<CR>")
		vim.keymap.set("n", "H", ":bprevious<CR>")
	end,
}
