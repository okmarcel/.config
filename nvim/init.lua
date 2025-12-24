vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.wrap = false

vim.g.mapleader = " "

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>') 

vim.pack.add({
  "https://github.com/vague-theme/vague.nvim",
})

require("vague").setup({
  -- optional configuration here
})

vim.cmd("colorscheme vague")

vim.o.termguicolors = true

