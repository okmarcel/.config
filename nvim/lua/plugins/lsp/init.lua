return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},

	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			require("mason-lspconfig").setup({
				ensure_installed = {
					"clangd",
					"cmake",
					"html",
					"jdtls",
					"kotlin_language_server",
					"lua_ls",
					"rust_analyzer",
					-- "typst_lsp", -- doesnt work
				}
			})
			
			local servers = {
				"clangd",
				"cmake",
				"html",
				"jdtls",
				"kotlin_language_server",
				"lua_ls",
				"rust_analyzer",
			}

			for _, server in ipairs(servers) do
				vim.lsp.config(server, {
					capabilites = capabilites,
				})
			end

			vim.lsp.enable(servers)

			vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
			vim.keymap.set('n', 'K', vim.lsp.buf.hover)
			vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
		end,
	},
}
