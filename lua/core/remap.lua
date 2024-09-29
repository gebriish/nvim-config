vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.keymap.set('n', '<leader>fe', ':Neotree toggle<cr>')

vim.keymap.set('n', '<leader>a', 'ggVG')

vim.keymap.set('n', '<leader>w', '<C-w>')

vim.keymap.set('n', '<leader>tn', function() vim.cmd("tabnew") end)
vim.keymap.set('n', '<leader>x', function() vim.cmd("bd") end)

vim.keymap.set('n', '>', function() vim.cmd("tabnext") end)
vim.keymap.set('n', '<', function() vim.cmd("tabprevious") end)

vim.keymap.set('n', '<leader>tt', function() vim.cmd("ToggleTerm direction=float") end)
