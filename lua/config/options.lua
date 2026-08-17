-- vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'noselect' }

vim.opt.number           = true
vim.opt.numberwidth      = 3
vim.opt.relativenumber   = true

vim.opt.wrap             = false

vim.opt.tabstop          = 4
vim.opt.softtabstop      = 4
vim.opt.shiftwidth       = 4
vim.opt.expandtab        = true

vim.opt.smartindent      = true

vim.opt.swapfile         = false
vim.opt.backup           = false
vim.opt.undodir          = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile         = true

vim.opt.hlsearch         = false
vim.opt.incsearch        = true
vim.opt.inccommand       = 'split'
vim.opt.laststatus       = 3

vim.opt.splitbelow       = true
vim.opt.splitright       = true

vim.opt.termguicolors    = true

vim.opt.scrolloff        = 10
vim.opt.colorcolumn      = '80'
vim.opt.signcolumn       = 'yes'

vim.opt.updatetime       = 50

-- Spell checking
vim.opt.spell            = true
vim.opt.spelllang        = 'en_us'

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase       = true
vim.opt.smartcase        = true

vim.opt.completeopt      = 'menuone,noselect'

-- netrw config
vim.g.netrw_browse_split = 0
-- vim.g.netrw_banner       = 0
vim.g.netrw_winsize      = 25

vim.opt.isfname:append('@-@')
vim.opt.clipboard:append('unnamedplus')
