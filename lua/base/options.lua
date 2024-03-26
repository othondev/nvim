vim.g.mapleader = " "

local opt = vim.opt

-- UI
opt.number = true -- Show line numbers
opt.relativenumber = true -- Relative line numbers
opt.cursorline = true -- Highlight the current line
opt.showmatch = true -- Highlight matching brackets
opt.foldmethod = "marker" -- Enable folding (default 'foldmarker')
opt.colorcolumn = "80" -- Line length marker at 80 columns
opt.splitright = true -- Vertical splits will automatically be to the right
opt.splitbelow = true -- Horizontal splits will automatically be below

-- Search
opt.ignorecase = true -- Ignore case
opt.smartcase = true -- Do not ignore case with capitals
opt.hlsearch = true -- Highlight search results
opt.incsearch = true -- Makes search act like search in modern browsers

-- Misc
opt.clipboard = "unnamedplus"
opt.wrap = false -- Disable line wrap
opt.swapfile = false -- Don't use swapfile
opt.backup = false -- Don't make a backup before overwriting a file
opt.undodir = vim.fn.stdpath("config") .. "/undo" -- Set an undo directory
opt.undofile = true -- Enable persistent undo
opt.scrolloff = 8 -- Lines of context
opt.sidescrolloff = 8 -- Columns of context

-- Memory, CPU
opt.hidden = true -- Enable background buffers
opt.history = 100 -- Remember N lines in history
opt.lazyredraw = true -- Faster scrolling
opt.synmaxcol = 240 -- Max column for syntax highlight

-- Better editor UI
opt.termguicolors = true -- True color support
opt.signcolumn = "yes" -- Always show the sign column
