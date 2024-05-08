local global = {
  mapleader = ' ',
  maplocalleader = ' ',
  have_nerd_font = false,
}

local options = {
  number = true,
  mouse = 'a',
  showmode = false,
  clipboard = 'unnamedplus',
  breakindent = true,
  undofile = true,
  ignorecase = true,
  smartcase = true,
  signcolumn = 'yes',
  updatetime = 250,
  timeoutlen = 300,
  splitright = true,
  splitbelow = true,
  list = true,
  listchars = { tab = '» ', trail = '·', nbsp = '␣' },
  inccommand = 'split',
  cursorline = true,
  scrolloff = 10,
  hlsearch = true,
}

for k, v in pairs(global) do
  vim.opt[k] = v
end

for k, v in pairs(options) do
  vim.opt[k] = v
end
