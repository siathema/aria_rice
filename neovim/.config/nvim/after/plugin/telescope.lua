local builtin = require('telescope.builtin')

-- Remap telescope find files to leader pf, Mnemonic "(P)roject (F)iles"
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- Remap telescope git files to Ctrl p, Mnemonic "Ctrl (P)roject"
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- Remap telescope grep string to leader ps, Mnemoniv "(P)roject (S)earch"
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")})
end)
