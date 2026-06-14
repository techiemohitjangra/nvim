require('vim._core.ui2').enable({
    enable = true
})

require('config')
require('plugins')

vim.lsp.enable({
    -- 'clangd',
    -- 'cmake',
    'css',
    'gopls',
    'html',
    'lua',
    'python',
    'rust',
    'typescript',
    'zig',
})

vim.cmd [[
     autocmd FileType go colorscheme dracula
]]

