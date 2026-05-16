return {
	{
		import = "plugins.lsp"
	},

	{
		import = "plugins.completion"
	},

	{
		-- lazygit
		"kdheepak/lazygit.nvim",
		lazy = true,
		cmd = {
		    "LazyGit",
		    "LazyGitConfig",
		    "LazyGitCurrentFile",
		    "LazyGitFilter",
		    "LazyGitFilterCurrentFile",
		},
		-- optional for floating window border decoration
		dependencies = {
		    "nvim-lua/plenary.nvim",
		},
		-- setting the keybinding for LazyGit with 'keys' is recommended in
		-- order to load the plugin when the command is run for the first time
		keys = {
		    { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
		},
	},

--[[
	{
		-- vague colorscheme
		"vague2k/vague.nvim",
		priority = 1000,
		config = function()
		  require("vague").setup({})
		  vim.cmd.colorscheme("vague")
		end,
	},
]]
	{
		-- kanagawa colorscheme
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function()
		  require("kanagawa").setup({})
		  vim.cmd.colorscheme("kanagawa-dragon")
		  -- other theme options
		  -- vim.cmd.colorscheme("kanagawa-wave")
		  -- vim.cmd.colorscheme("kanagawa-lotus")
		end,
	},

	{
		-- file explorer in lua
		"nvim-tree/nvim-tree.lua",
		dependencies = {
		    "nvim-tree/nvim-web-devicons",
		},
		config = function()
		  require("nvim-tree").setup()
		end,
	},
}
