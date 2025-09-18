return {
  "AckslD/nvim-neoclip.lua",
  dependencies = {
    -- you'll need at least one of these
    {'nvim-telescope/telescope.nvim'},
  },
  config = function()
    require('neoclip').setup()
	-- map to the :Telescope neoclip command
	vim.api.nvim_set_keymap('n', '<leader>p', ':Telescope neoclip<CR>', { noremap = true, silent = true })
  end,
}
