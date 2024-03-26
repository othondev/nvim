local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Navigate buffers
map("n", "]b", ":bnext<CR>", opts)
map("n", "[b", ":bprevious<CR>", opts)
