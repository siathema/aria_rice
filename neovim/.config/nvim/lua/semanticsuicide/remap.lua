-- Remap leader to SPACE
vim.g.mapleader = " "
-- Remap leader pv to Ex cmd, takes you to netrc for the currend directory, mnemonic "(P)roject (V)iew"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- make this work!
vim.keymap.set("v", "J", "m: '<-2<CR>gv=gv")
vim.keymap.set("v", "K", "m: '>+1<CR>gv=gv")

vim.keymap.set("n", "<F5>", ":! make\n")
