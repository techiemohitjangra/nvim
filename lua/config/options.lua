-- vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'noselect' }

vim.o.number             = true
vim.o.numberwidth        = 3
vim.o.relativenumber     = true

vim.o.wrap               = false

vim.o.tabstop            = 4
vim.o.softtabstop        = 4
vim.o.shiftwidth         = 4
vim.o.expandtab          = true

vim.o.smartindent        = true

vim.o.swapfile           = false
vim.o.backup             = false
vim.o.undodir            = os.getenv('HOME') .. '/.vim/undodir'
vim.o.undofile           = true

vim.o.hlsearch           = false
vim.o.incsearch          = true

vim.o.termguicolors      = true

vim.opt.scrolloff        = 10
vim.opt.signcolumn       = 'yes'
-- vim.o.isfname:append('@-@')

vim.o.updatetime         = 50

vim.o.colorcolumn        = '80'

-- Spell checking
vim.o.spell              = true
vim.o.spelllang          = 'en_us'

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase         = true
vim.o.smartcase          = true

vim.o.completeopt        = 'menuone,noselect'

-- netrw config
vim.g.netrw_browse_split = 0
vim.g.netrw_banner       = 0
vim.g.netrw_winsize      = 25
