local execute = vim.api.nvim_command
local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

vim.cmd("packadd packer.nvim")

return require("packer").startup(function(use)
	-- Your plugins here
	use("wbthomason/packer.nvim") -- Packer manages itself
	use("nvim-lua/plenary.nvim") -- Common utilities

	-- Add more plugins here

	-- You can also specify plugin configuration directly
	-- use {
	--   'my/plugin',
	--   config = function()
	--     require('config.myplugin')
	--   end
	-- }
end)
