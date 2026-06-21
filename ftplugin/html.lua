-- file type specific theme
local default_theme = 'rose-pine'

-- Apply Dracula when entering this specific Go buffer
vim.api.nvim_create_autocmd("BufEnter", {
    buffer = 0, -- '0' means apply to the current buffer only
    callback = function()
        if vim.bo.filetype == 'go' and vim.g.colors_name ~= 'dracula' then
            pcall(vim.cmd.colorscheme, 'dracula')
        end
    end,
})

-- Revert to your default theme when leaving this Go buffer
vim.api.nvim_create_autocmd("BufLeave", {
    buffer = 0,
    callback = function()
        if vim.bo.filetype == 'go' and vim.g.colors_name ~= default_theme then
            pcall(vim.cmd.colorscheme, default_theme)
        end
    end,
})
