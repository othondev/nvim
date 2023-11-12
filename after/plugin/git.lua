-- Check if Fugitive is loaded
if not vim.fn.exists(":Git") then
	return
end

-- Define key mappings for Git operations using Fugitive
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<leader>gg", ":Git<CR>", opts)
map("n", "<leader>gd", ":Gdiffsplit<CR>", opts)
map("n", "<leader>gb", ":Git blame<CR>", opts)
map("n", "<leader>gl", ":Git log<CR>", opts)
