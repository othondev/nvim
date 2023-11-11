local execute = vim.api.nvim_command
local fn = vim.fn

-- Ensure packer is installed
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

--Install plugins
require("packer").startup(function(use)
	-- Core
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")
end)

--Initialize plugins
