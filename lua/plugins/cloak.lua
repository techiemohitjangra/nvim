vim.pack.add({
    {
        src = 'https://github.com/laytan/cloak.nvim',
        name = 'cloak'
    },
})

local cloak = require('cloak')

cloak.setup({
    enable = true,
    cloak_character = '*',
    highlight_group = 'Comment',
    patterns = {
        {
            -- set file to cloak to work with
            file_pattern = {
                '.env',
                '.dev.vars',
            },
            cloak_pattern = '=.+',
        },
    },
})
