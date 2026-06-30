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

vim.keymap.set("n", "<leader>dw", vim.diagnostic.open_float, { desc = "Show warning" })
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Next warning" })
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Previous warning" })


-- git keymaps
vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Preview git hunk" })
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", { desc = "Git blame line" })
vim.keymap.set("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", { desc = "Git diff current file" })

vim.keymap.set("n", "<leader>gv", "<cmd>DiffviewOpen<CR>", { desc = "Open git diff view" })
vim.keymap.set("n", "<leader>gq", "<cmd>DiffviewClose<CR>", { desc = "Close git diff view" })


-- Strudel keymaps
local strudel = require("strudel")

vim.keymap.set("n", "<leader>sl", strudel.launch, { desc = "Launch Strudel" })
vim.keymap.set("n", "<leader>sq", strudel.quit, { desc = "Quit Strudel" })
vim.keymap.set("n", "<leader>st", strudel.toggle, { desc = "Strudel Toggle Play/Stop" })
vim.keymap.set("n", "<leader>su", strudel.update, { desc = "Strudel Update" })
vim.keymap.set("n", "<leader>ss", strudel.stop, { desc = "Strudel Stop Playback" })
vim.keymap.set("n", "<leader>sb", strudel.set_buffer, { desc = "Strudel set current buffer" })
vim.keymap.set("n", "<leader>sx", strudel.execute, { desc = "Strudel set current buffer and update" })
