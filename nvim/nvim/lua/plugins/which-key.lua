return {
	"folke/which-key.nvim",
	config = function()
		require("which-key").setup({
            delay = 2000,
        })
	end,
}