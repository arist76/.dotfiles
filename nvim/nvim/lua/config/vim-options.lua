----------------------------------------------
------- nvim reamps and tewaks ---------------
----------------------------------------------
---

-- set a leader
vim.g.mapleader = " "

-- set catppuccin theme
vim.cmd.colorscheme "catppuccin-mocha"


-- Set cliipBoard system's clipboard
vim.cmd("set clipboard+=unnamedplus")

-- Map 'jj' to act as Escape in insert mode
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })

-- enable color support in terminal
vim.o.termguicolors = true

-- Enable line numbers and set them to relative
vim.o.number = true
-- vim.o.relativenumber = true

-- config tap
vim.cmd("set noexpandtab")   -- Use actual tabs instead of spaces
vim.cmd("set tabstop=4")     -- Number of spaces that a <Tab> in the file counts for
vim.cmd("set softtabstop=4") -- Number of spaces to use when editing
vim.cmd("set shiftwidth=4")  -- Number of spaces used for autoindent



-- REMAPS

-- move half page and make it center
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz<CR>', { noremap = true, silent = true })

-- -- move code up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- change to split screen
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Use the system clipboard
vim.opt.clipboard = "unnamedplus" 


-- terminal configurations
-- Open a terminal in a horizontal split
vim.keymap.set("n", "<leader>th", ":split | terminal<CR>", { noremap = true, silent = true })

-- Open a terminal in a vertical split
vim.keymap.set("n", "<leader>tv", ":vsplit | terminal<CR>", { noremap = true, silent = true })

-- Open a terminal in a new tab
vim.keymap.set("n", "<leader>tt", ":tabnew | terminal<CR>", { noremap = true, silent = true })

-- Toggle terminal
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>", { noremap = true, silent = true })


-- vim.keymap.set('n', 'x', '"_x', { noremap = true }) -- Disable yanking for single-character delete
-- vim.keymap.set('n', 'X', '"_X', { noremap = true }) -- Disable yanking for backward single-character delete
-- vim.keymap.set('n', 'd', '"_d', { noremap = true }) -- Disable yanking for delete
-- vim.keymap.set('n', 'D', '"_D', { noremap = true }) -- Disable yanking for delete-to-end-of-line
-- vim.keymap.set('n', 'c', '"_c', { noremap = true }) -- Disable yanking for change
-- vim.keymap.set('n', 'C', '"_C', { noremap = true }) -- Disable yanking for change-to-end-of-line

