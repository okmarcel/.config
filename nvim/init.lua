vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.termguicolors = true

vim.g.mapleader = " "
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>') 

vim.pack.add({
	{ src = "https://github.com/vague2k/vague.nvim" },
})

require("vague").setup({})

vim.cmd("colorscheme vague")
