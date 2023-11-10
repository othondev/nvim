-- options.lua
-- Sets various options for Neovim

local opt = vim.opt

-- UI
opt.number = true                  -- Show line numbers
opt.relativenumber = true          -- Relative line numbers
opt.cursorline = true              -- Highlight the current line
opt.showmatch = true               -- Highlight matching brackets
opt.foldmethod = 'marker'          -- Enable folding (default 'foldmarker')
opt.colorcolumn = '80'             -- Line length marker at 80 columns
opt.splitright = true              -- Vertical splits will automatically be to the right
opt.splitbelow = true              -- Horizontal splits will automatically be below

-- Tabs, indent
opt.expandtab = true               -- Use spaces instead of tabs
opt.shiftwidth = 4                 -- Shift 4 spaces when tab
opt.tabstop = 4                    -- 1 tab == 4 spaces
opt.smartindent = true             -- Autoindent new lines

-- Search
opt.ignorecase = true              -- Ignore case
opt.smartcase = true               -- Do not ignore case with capitals
opt.hlsearch = true                -- Highlight search results
opt.incsearch = true               -- Makes search act like search in modern browsers

-- Misc
opt.wrap = false                   -- Disable line wrap
opt.swapfile = false               -- Don't use swapfile
opt.backup = false                 -- Don't make a backup before overwriting a file
opt.undodir = vim.fn.stdpath('config') .. '/undo'  -- Set an undo directory
opt.undofile = true                -- Enable persistent undo
opt.scrolloff = 8                  -- Lines of context
opt.sidescrolloff = 8              -- Columns of context

-- Memory, CPU
opt.hidden = true                  -- Enable background buffers
opt.history = 100                  -- Remember N lines in history
opt.lazyredraw = true              -- Faster scrolling
opt.synmaxcol = 240                -- Max column for syntax highlight

-- Better editor UI
opt.termguicolors = true           -- True color support
opt.signcolumn = 'yes'             -- Always show the sign column

-- Remember last position in file
vim.cmd [[
  augroup remember_folds
    autocmd!
    autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
  augroup end
]]

-- You can add more options here


