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
  undodir = '/tmp/' .. '/nvim_undo',
  statusline = '%<%f %h%m%r%=%-14.(%l,%c%V%) [%{luaeval("Info.BranchName()")}]',
}

local diagnostic = {
  signs = false,
  virtual_text = false,
}

for k, v in pairs(global) do
  vim.g[k] = v
end

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.diagnostic.config(diagnostic)
