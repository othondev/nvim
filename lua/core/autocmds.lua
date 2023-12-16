-- autocmds.lua
-- Defines various autocommands for Neovim

local api = vim.api

-- Create a group for our autocmds to avoid duplications when reloading
local autocmd_group = api.nvim_create_augroup("MyAutoCmds", { clear = true })

-- Highlight on yank
api.nvim_create_autocmd("TextYankPost", {
    group = autocmd_group,
    callback = function()
        vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
    end,
})

-- Autoformat on save
api.nvim_create_autocmd("BufWritePre", {
    group = autocmd_group,
    pattern = "*",
    command = "silent! lua vim.lsp.buf.formatting_sync(nil, 1000)",
})

-- Auto open and close the quickfix window
api.nvim_create_autocmd({ "QuickFixCmdPost" }, {
    group = autocmd_group,
    pattern = "[^l]*",
    command = "cwindow",
})
api.nvim_create_autocmd({ "QuickFixCmdPost" }, {
    group = autocmd_group,
    pattern = "l*",
    command = "lwindow",
})

-- Restore cursor position when reopening files
api.nvim_create_autocmd("BufReadPost", {
    group = autocmd_group,
    callback = function()
        if vim.fn.line("'\"") >= 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
            api.nvim_command('normal! g`"')
        end
    end,
})

-- More autocommands can be added here
