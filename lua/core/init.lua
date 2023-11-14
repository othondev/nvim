require("core.options")
require("core.autocmds")
require("core.mappings")

local function load_functional_commands()
	local command_dir = vim.fn.stdpath("config") .. "/lua/core/functions"
	local scan_result = vim.fn.readdir(command_dir)
	local commands = {}
	local command_names = {} -- List for autocomplete

	for _, file in ipairs(scan_result) do
		if file:match("%.lua$") then
			local command_name = file:gsub("%.lua$", "")
			table.insert(command_names, command_name) -- Add to autocomplete list
			commands[command_name] = require("core.functions." .. command_name)
		end
	end

	return commands, command_names
end

local othon_commands, othon_command_names = load_functional_commands()

-- Autocomplete function
local function othon_command_complete(ArgLead, CmdLine, CursorPos)
	local matches = {}
	for _, name in ipairs(othon_command_names) do
		if name:find("^" .. ArgLead) then
			table.insert(matches, name)
		end
	end
	return matches
end

-- Command registration with autocomplete
vim.api.nvim_create_user_command("Othon", function(opts)
	local subcommand = opts.args
	if othon_commands[subcommand] then
		othon_commands[subcommand]()
	else
		print("Unknown subcommand: " .. subcommand)
	end
end, {
	nargs = 1,
	complete = othon_command_complete,
})
