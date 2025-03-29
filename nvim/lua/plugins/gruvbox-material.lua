return {
  'sainnhe/gruvbox-material',
  lazy = false,
  priority = 1000,
  config = function()
	-- Optionally configure and load the colorscheme
	-- directly inside the plugin declaration.
	--see below for more options
	-- https://github.com/sainnhe/gruvbox-material/blob/master/doc/gruvbox-material.txt
	vim.g.gruvbox_material_enable_italic = true
	vim.g.gruvbox_material_enable_bold = true
	vim.g.gruvbox_material_diagnostic_virtual_text='colored'
        vim.g.gruvbox_material_background = 'light'  -- Set the background to light
	vim.cmd.colorscheme('gruvbox-material')
  end
}

