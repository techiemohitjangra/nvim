vim.keymap.set('n', '[d', function() vim.diagnostic.jump({count = -1, float=true}) end, { desc = 'Go to previous diagnostic messege' })
vim.keymap.set('n', ']d', function() vim.diagnostic.jump({count = 1, float=true}) end, { desc = 'Go to next diagnostic messege' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic messege' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic list' })
