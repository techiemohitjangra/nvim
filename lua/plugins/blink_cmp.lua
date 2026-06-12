-- 1. Download and track blink via v0.12's native plugin manager
vim.pack.add({
    {
        src = 'https://github.com/saghen/blink.cmp',
        -- version = vim.version.range('*'), -- Automatically pins to stable releases
        version = 'v1',
    },
})

require("blink.cmp").setup({
    -- Choose your style: 'default', 'super-tab', or 'enter'
    keymap = {
        preset = 'enter',
        -- preset = 'default',
        -- ['Return'] = { 'select_and_accept', 'fallback' },
        -- ['<C-Space>'] = { 'show', 'show_documentation', 'hide' },
    },

    appearance = {
        -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        nerd_font_variant = 'mono',
    },

    -- Order of suggestions (Top to Bottom priority)
    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    -- Modern UI bells & whistles
    completion = {
        -- Show VSCode-style ghost text as you type
        ghost_text = { enabled = true },

        -- Show documentation instantly when moving through items
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 250,
        },
    },

    -- Native signature help (tells you function arguments while typing)
    signature = { enabled = true },
})
