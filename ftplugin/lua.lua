vim.api.nvim_create_autocmd({ "InsertLeave", "TextYankPost" }, {
pattern = "*.lua",
callback = function()
if vim.bo.modified then
vim.defer_fn(function()
vim.cmd("silent! write")
end, 100)
end
end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
pattern = "*.lua",
callback = function()
local file = vim.fn.expand("%:p")
if file:match("init.lua$") then
vim.cmd("silent! so " .. file)
end
end,
})
