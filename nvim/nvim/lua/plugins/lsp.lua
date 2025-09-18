-- Mason: Install and manage LSP servers, linters, formatters, etc.
return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig"
	},
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					jackage_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗"
				}
			}
		})
		local lspconfig = require("lspconfig")

		-- Default keybindings for LSP
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(args)
				local client = vim.lsp.get_client_by_id(args.data.client_id)
				local opts = { buffer = args.buf, noremap = true, silent = true }

				-- Keybindings
				-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- Go to definition
				vim.keymap.set("n", "gd", ":Telescope lsp_definitions<CR>", opts) -- Go to references, use telescope
				-- vim.keymap.set("n", "gr", vim.lsp.buf.references, opts) -- Show references
				vim.keymap.set("n", "gr", ":Telescope lsp_references<CR>", opts) -- Go to references, use telescope
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)          -- Show documentation
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- Code actions
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- Rename symbol
				vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, opts) -- Format code
				vim.keymap.set("n", "<leader>ge", vim.diagnostic.open_float,
					{ noremap = true, silent = true, desc = "Show current Error in float" })
				vim.keymap.set('n', '<leader>gE', [[:lua YankDiagnosticError()<CR>]],
					{ noremap = true, silent = true, desc = "Copy error" })
			end,
		})


		-- Lsp configs go here
		lspconfig.lua_ls.setup {}
		lspconfig.pyright.setup {}
		lspconfig.rust_analyzer.setup {
		  settings = {
		    ["rust-analyzer"] = {
		      cargo = {
			allFeatures = true, -- Enables all features in all crates
		      },
		    },
		  },
		}
		lspconfig.ts_ls.setup {
			filetypes = {
				"html",
				"javascriptreact",
				"typescriptreact",
				"javascript",
				"typescript",
				"svelte",
			},
		}
		lspconfig.svelte.setup({
			settings = {
				svelte = {
					-- Add SvelteKit-specific settings
					plugin = {
						svelte = {
							-- Enable SvelteKit support
							kit = true,
						},
					},
				},
			},
		})
		lspconfig.tailwindcss.setup {}
		lspconfig.emmet_language_server.setup({
			filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact" },
			-- Read more about this options in the [vscode docs](https://code.visualstudio.com/docs/editor/emmet#_emmet-configuration).
			-- **Note:** only the options listed in the table are supported.
			init_options = {
				---@type table<string, string>
				includeLanguages = {},
				--- @type string[]
				excludeLanguages = {},
				--- @type string[]
				extensionsPath = {},
				--- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
				preferences = {},
				--- @type boolean Defaults to `true`
				showAbbreviationSuggestions = true,
				--- @type "always" | "never" Defaults to `"always"`
				showExpandedAbbreviation = "always",
				--- @type boolean Defaults to `false`
				showSuggestionsAsSnippets = false,
				--- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
				syntaxProfiles = {},
				--- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
				variables = {},
			},
		})
	end,
}
