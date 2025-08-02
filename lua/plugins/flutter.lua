return 	{
	"akinsho/flutter-tools.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim",
		"nvim-telescope/telescope.nvim"
	},
	config = function()
		require("flutter-tools").setup({
			lsp = {
				color = {
					enabled = true,
				},
				on_attach = function(client, bufnr)
					-- Enable diagnostics
					vim.diagnostic.config({
						virtual_text = true,  -- Show inline errors (squiggles)
						signs = true,        -- Show signs in gutter
						update_in_insert = false,
					})
				end,
				capabilities = require("cmp_nvim_lsp").default_capabilities(),
			},
			decorations = {
				statusline = {
					device = true,  -- Show connected device in statusline
					app_version = true,
				},
			},
			widget_guides = {
				enabled = true,  -- Flutter widget guides
			},
		})
		end,
},
	-- { "hrsh7th/nvim-cmp" },
	-- { "hrsh7th/cmp-nvim-lsp" },
	-- { "L3MON4D3/LuaSnip" },
	-- { "saadparwaiz1/cmp_luasnip" },