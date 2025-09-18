return {
	--NOTE: MAKE SURE TO Install Ripgrep on your system to have full search capabilities
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		defaults = {
			winblend = 0, -- Adjust transparency level (0 = fully opaque, 100 = fully transparent)
		},
		config = function()

			-- Override Telescope's highlight groups for transparency
			vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" }) -- Background of the floating window
			vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" }) -- Border of the floating window
			vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "none" }) -- Background of the prompt
			vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" }) -- Border of the prompt
			vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "none" }) -- Background of the preview
			vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "none" }) -- Border of the preview



			local builtin = require("telescope.builtin") -- save all telescope built-in functionality to a variables
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "live grep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "select currently open files" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "help_tags" })
			vim.keymap.set("n", "<leader>ft", ":TodoTelescope<CR>", { desc = "find todos" })
			vim.keymap.set("n", "<leader>th", builtin.colorscheme, { desc = "select themes" })
			vim.keymap.set("n", "<leader>fe", ":Telescope diagnostics<CR>", { desc = "find errors" })
			-- LSP
			-- DOC https://github.com/nvim-telescope/telescope.nvim#neovim-lsp-pickers
			vim.keymap.set('n', 'gr', builtin.lsp_references, {desc = "Find references"})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}


