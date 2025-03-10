return {
	["neovim/nvim-lspconfig"] = {
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("addons.custom.lspconfig")
		end,
	},
	["stevearc/conform.nvim"] = {
		event = "BufWritePre",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					css = { "prettier" },
					html = { "prettier" },
				},

				format_on_save = {
					timeout_ms = 500,
					lsp_fallback = true,
				},
			})
		end,
	},
	["nvim-neo-tree/neo-tree.nvim"] = {
		lazy = false,
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("addons.custom.neo-tree")
		end,
	},
	["tpope/vim-fugitive"] = { lazy = false },
	["nvim-telescope/telescope.nvim"] = {
		config = function()
			require("addons.custom.telescope")
		end,
	},
	["sindrets/diffview.nvim"] = { lazy = false },
}
