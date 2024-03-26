local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<ESC>", ":noh<CR>", opts)

map("n", "<leader>s", [[:lua SearchWordUnderCursor()<CR>]], { noremap = true, silent = true })
map("v", "<leader>s", [[:<C-u>lua SearchVisualSelectionMultiline()<CR>]], { noremap = true, silent = true })

function SearchWordUnderCursor()
	local word = vim.fn.expand("<cword>")
	vim.cmd("vimgrep /" .. word .. "/j *")
	vim.cmd("cw")
end

function SearchVisualSelectionMultiline()
	vim.cmd('normal! gv"vy')
	local search = vim.fn.getreg("v")
	search = vim.fn.escape(search, "\\/")
	search = search:gsub("\n", "\\_.\\{-}")
	vim.cmd("vimgrep /" .. search .. "/j *")
	vim.cmd("cw")
	vim.fn.setreg("/", search)
	vim.cmd("set hlsearch")
end
