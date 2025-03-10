require("options")
require("mappings")

require("addons.init").LoadPlugins()
-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require("nvchad.autocmds")

vim.schedule(function()

end)
