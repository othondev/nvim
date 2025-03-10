vim.g.mapleader = " "

local visual = require "mappings.visual"
local insert = require "mappings.insert"
local normal = require "mappings.normal"

for key, mapping in pairs(normal) do
  vim.api.nvim_set_keymap("n", key, mapping.cmd .. "<cr>", { noremap = true, silent = true, desc = mapping.desc })
end

for key, mapping in pairs(visual) do
  vim.api.nvim_set_keymap("v", key, mapping.cmd .. "<cr>", { noremap = true, silent = true, desc = mapping.desc })
end

for key, mapping in pairs(insert) do
  vim.api.nvim_set_keymap("i", key, mapping.cmd .. "<cr>", { noremap = true, silent = true, desc = mapping.desc })
end
