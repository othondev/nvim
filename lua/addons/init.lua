local M = {}

local function getPlugins()
	local plugins = {}
	for plugin, config in pairs(require("addons.plugins")) do
		table.insert(plugins, vim.tbl_extend("force", { plugin }, config))
	end

	return plugins
end

function M.LoadPlugins()
	vim.g.base46_cache = vim.fn.stdpath("data") .. "/nvchad/base46/"
	-- bootstrap lazy and all plugins
	local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

	if not vim.loop.fs_stat(lazypath) then
		local repo = "https://github.com/folke/lazy.nvim.git"
		vim.fn.system({ "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath })
	end

	vim.opt.rtp:prepend(lazypath)
	local lazy_config = require("addons.custom.lazy")
	-- load plugins
	require("lazy").setup({
		{
			"NvChad/NvChad",
			lazy = false,
			branch = "v2.5",
			import = "nvchad.plugins",
			config = function()
				require("options")
			end,
		},

		getPlugins(),
	}, lazy_config)
end

return M
