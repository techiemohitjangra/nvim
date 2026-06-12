vim.g.mapleader = ' '
vim.g.localmapleader = ' '

-- ====================
--      Navigation
-- ====================
vim.keymap.set('n', '<leader>pv', ':Ex<CR>')

-- navigate to end of file
vim.keymap.set("n", "G", "Gzz")

-- move rows in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- navigate to end of file
vim.keymap.set("n", "G", "Gzz")

vim.keymap.set("v", "Y", "yg$")
vim.keymap.set("n", "J", "mzJ`z")

-- page down i.e. go half page down
vim.keymap.set("n", "<C-n>", "<C-d>zz")
-- page up i.e. go half page up
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- navigate to next and previous match from /
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

-- paste from system clipboard
vim.keymap.set("n", "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+y$]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- -- navigation in quickfix list
vim.keymap.set("n", "<C-S-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-S-j>", "<cmd>cprev<CR>zz")

-- navigation in location list
vim.keymap.set("n", "<leader>K", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>J", "<cmd>lprev<CR>zz")

-- navigation between windows
vim.keymap.set("n", "<M-h>", "<cmd>wincmd h<CR>zz")
vim.keymap.set("n", "<M-j>", "<cmd>wincmd j<CR>zz")
vim.keymap.set("n", "<M-k>", "<cmd>wincmd k<CR>zz")
vim.keymap.set("n", "<M-l>", "<cmd>wincmd l<CR>zz")

-- replace string
vim.keymap.set("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- grant executable permission to current file
vim.keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true })

-- jump to packer.lua file
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/mohitjangra/plugins/<CR>");

-- ====================
--         LSP
-- ====================
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'LSP hover information' })
vim.keymap.set('i', '<C-h>', vim.lsp.buf.signature_help, { desc = 'LSP signature help' })

vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
vim.keymap.set('n', 'gI', vim.lsp.buf.implementation)
vim.keymap.set('n', 'gm', vim.lsp.buf.document_symbol)
vim.keymap.set('n', '<leader>rr', vim.lsp.buf.references)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>m', vim.lsp.buf.document_symbol)
vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, { desc = '[W]orkspace [S]ymbols' })

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)






-- vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end,
--     { desc = 'Open [D]iagnostics', buffer = ev.buf, remap = false })
-- vim.keymap.set("n", "gr", require('telescope.builtin').lsp_references,
--     { desc = '[G]oto [R]eference LSP', remap = false })
-- vim.keymap.set("n", "gI", require('telescope.builtin').lsp_implementations,
--     { desc = '[G]oto [I]mplementaion LSP', remap = false })
-- vim.keymap.set("n", "<leader>D", function() vim.lsp.buf.type_definition() end,
--     { desc = 'Type [D]efinition', remap = false })
-- vim.keymap.set("n", "<leader>m", require('telescope.builtin').lsp_document_symbols,
--     { desc = '[D]ocument [S]ymbols LSP', remap = false })
-- vim.keymap.set("n", "<leader>ws", require('telescope.builtin').lsp_workspace_symbols,
--     { desc = '[W]orkspace [S]ymbols LSP', remap = false })


-- vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end,
--     { desc = 'Signature Documentation', buffer = ev.buf, remap = false })
-- vim.keymap.set("n", "<leader>wa", function() vim.lsp.buf.add_workspace_folder() end,
--     { desc = '[W]orkspace [A]dd Folder', buffer = ev.buf, remap = false })
-- vim.keymap.set("n", "<leader>wr", function() vim.lsp.buf.remove_workspace_folder() end,
--     { desc = '[W]orkspace [R]emove Folder', buffer = ev.buf, remap = false })
-- vim.keymap.set("n", "<leader>wl", function() vim.lsp.buf.list_workspace_folders() end,
--     { desc = '[W]orkspace [L]ist Folders', buffer = ev.buf, remap = false })
