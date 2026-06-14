vim.pack.add({
    -- @type vim.pack.Spec
    {
        src = 'https://github.com/rose-pine/neovim',
        name = 'rose-pine'
    },
    {
        src = 'https://github.com/navarasu/onedark.nvim',
        name = 'onedark',
    },
    {
        src = 'https://github.com/Mofiqul/dracula.nvim',
        name = 'dracula',
    },
    {
        src = 'https://github.com/oxfist/night-owl.nvim',
        name = 'nightowl',
    },
    {
        src = 'https://github.com/folke/tokyonight.nvim',
        name = 'tokyonight',
    },
    {
        src = 'https://github.com/catppuccin/nvim',
        name = 'catppuccin',
    },
    {
        src = 'https://github.com/rebelot/kanagawa.nvim',
        name = 'kanagawa',
    },
    {
        src = 'https://github.com/rmehri01/onenord.nvim',
        name = 'onenord',
    }

})

local rose_pine = require('rose-pine')
rose_pine.setup({
    variant = 'main'
})

vim.cmd.colorscheme('rose-pine')
