-- mappings.lua
-- Key mappings configuration for Neovim

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
                               -- Normal Mode --
-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
map("n", "<TAB>", ":bnext<CR>", opts)
map("n", "<S-TAB>", ":bprevious<CR>", opts)

-- Clear search highlighting with ESC
map("n", "<ESC>", ":noh<CR>", opts)

                               -- Insert Mode --
-- Press jk quickly to exit insert mode
map("i", "jk", "<ESC>", opts)

                               -- Visual Mode --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Move text up and down
map("v", "<A-j>", ":m .+1<CR>==", opts)
map("v", "<A-k>", ":m .-2<CR>==", opts)

                               -- Visual Block --
-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv'", opts)
map("x", "K", ":move '<-2<CR>gv-gv'", opts)

                               -- Command Mode --
-- Map :W to :w because of frequent typo
map("c", "W", "w", opts)

-- More mappings can be added here
