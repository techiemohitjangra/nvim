vim.pack.add({
    {
        src = 'https://github.com/nvim-telescope/telescope-fzf-native.nvim',
        name = 'telescope-fzf-native',
    },
    {
        src = 'https://github.com/nvim-telescope/telescope.nvim',
        name = 'telescope',
        version = vim.version.range('*')
    },
})


local telescope = require('telescope')
-- 2. CRITICAL STEP: Manually inject the FZF extension into Telescope
telescope.load_extension('fzf')

-- 1. Initialize Telescope
telescope.setup({
    extensions = {
        fzf = {
            fuzzy = true,                   -- false will only do exact matching
            override_generic_sorter = true, -- override the generic lua sorter
            override_file_sorter = true,    -- override the file lua sorter
            case_mode = 'smart_case',       -- 'smart_case', 'ignore_case', or 'respect_case'
        }
    }
})


local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>F", builtin.spell_suggest, { desc = 'Spelling Suggestions' })

-- vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>sf', function()
    builtin.find_files({
        hidden = true,    -- Fixes the parent '.config' hidden folder block
        no_ignore = true, -- Prevents gitignore from breaking on 'opt' strings
        file_ignore_patterns = {
            '%.git/',
            'node_modules/',
            'site/pack/' -- Keeps your downloaded v0.12 plugins out of search results
        }
    })
end, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Telescope help tags' })
