vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("config.lazy")

vim.o.termguicolors = true

vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Sync clipboard with OS
vim.o.clipboard = 'unnamedplus'

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>') 
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
-- vim.keymap.set('n', '<leader>e', ':Ex<CR>')
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
