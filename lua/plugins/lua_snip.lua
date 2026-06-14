vim.pack.add({
    {
        src = 'https://github.com/L3MON4D3/LuaSnip',
        name = 'luasnip'
    },
})


local types = require 'luasnip.util.types'


local lua_snip = require('luasnip')
require('luasnip.loaders.from_vscode').lazy_load()

-- lua_snip.loaders.from_vscode.lazy_load()

lua_snip.setup {
    history = true,
    delete_check_events = 'TextChanged',
    -- Display a cursor-like placeholder in unvisited nodes
    -- of the snippet.
    ext_opts = {
        [types.insertNode] = {
            unvisited = {
                virt_text = { { '|', 'Conceal' } },
                virt_text_pos = 'inline',
            },
        },
    },
}
