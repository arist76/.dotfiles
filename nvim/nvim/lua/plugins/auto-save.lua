return {
	"Pocco81/auto-save.nvim",
	config = function()
		require("auto-save").setup({
			enabled = true,
			condition = function(buf)
			    local filetype = vim.bo[buf].filetype
			    return filetype ~= "lua" -- Prevent autosaving Lua files
		        end,
		})
	end,
}
