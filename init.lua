require 'options'

vim.g.mapleader = ' '

vim.keymap.set("n", "-", ":tabnew | Explore<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR><ESC>", { noremap = true, silent = true })

vim.cmd('filetype plugin indent on')
