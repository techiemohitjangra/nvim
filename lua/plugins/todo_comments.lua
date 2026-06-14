vim.pack.add({
    {
        src = 'https://github.com/folke/todo-comments.nvim',
        name = 'todo-comments',
    }
})


local todo_comments = require('todo-comments')

todo_comments.setup({
    signs = true,
})
