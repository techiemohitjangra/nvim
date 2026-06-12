require('config')
require('plugins')

vim.lsp.enable({
    'lua_ls',
    'zls',
    'rust_analyzer',
    'pyright',
    -- 'cmake-language-server',
    -- 'clangd',
    'gopls',
    'html_ls',
    'css_ls',
    'ts_ls',
})
