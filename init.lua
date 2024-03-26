local configLevel = os.getenv("NVIM_CONFIG_LEVEL")

if configLevel == "1" then
	require("base.navigation")
	require("base.options")
	require("base.finder")
	require("base.autocmds")
end

-- Load plugins and setup and mapping related on this
if configLevel == "2" then
	require("base.navigation")
	require("base.options")
	require("base.finder")
	require("base.autocmds")
	require("plugins")
end

-- Load plugins and setup and mapping related on this
if configLevel == "3" then
	require("core.options")
	require("core.options")
end

--require("core")
--require("plugins")
