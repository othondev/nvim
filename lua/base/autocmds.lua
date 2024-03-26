local api = vim.api

local autocmd_group = api.nvim_create_augroup("MyAutoCmds", { clear = true })

api.nvim_create_autocmd("TextYankPost", {
	group = autocmd_group,
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 100 })
	end,
})
