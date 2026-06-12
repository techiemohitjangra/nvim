-- momentarily highlight yanked text
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    group = highlight_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})


-- remove trailing white space on save
local remove_trailing_whitespaces = vim.api.nvim_create_augroup('RemoveTrailingSpaces', { clear = true })
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
    group = remove_trailing_whitespaces,
    pattern = '*',
    callback = function()
        -- Save the cursor position and search history
        local save = vim.fn.winsaveview()
        -- run the substitution
        vim.cmd([[%s/\s\+$//e]])
        -- restore cursor position
        vim.fn.winrestview(save)
    end,
    -- command = [[%s/\s\+$//e]],
})


-- --  register 'templ' file type
-- local templ_group = vim.api.nvim_create_augroup('TemplFileType', { clear = true })
-- vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
--     group = templ_group,
--     pattern = '*.templ',
--     callback = function()
--         vim.bo.filetype = 'templ'
--     end
-- })


-- Create an augroup to prevent duplicate autocmds if you reload your config
local tab_to_space_group = vim.api.nvim_create_augroup('ReplaceTabs', { clear = true })
-- Run the native :retab command right before saving the buffer
vim.api.nvim_create_autocmd('BufWritePre', {
    group = tab_to_space_group,
    pattern = '*',
    -- command = 'retab',
    callback = function()
        if vim.bo.filetype == "make" then
            return
        end

        -- Save the cursor position and search history
        local save = vim.fn.winsaveview()

        -- Save the current buffer's expandtab state
        local original_expandtab = vim.bo.expandtab

        -- Force expandtab to true so :retab actually converts to spaces
        vim.bo.expandtab = true

        -- Run retab to convert indentation tabs to spaces
        -- (Using :retab without '!' prevents it from altering tabs inside strings)
        vim.cmd([[retab]])

        -- Restore the original expandtab state
        vim.bo.expandtab = original_expandtab

        -- Restore the cursor position
        vim.fn.winrestview(save)
    end
})
