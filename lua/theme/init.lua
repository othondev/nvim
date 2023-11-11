-- theme/init.lua
-- Configuration for Neovim's appearance

local opt = vim.opt

-- Colorscheme settings
vim.cmd("colorscheme rose-pine") -- Replace 'your_colorscheme' with your preferred colorscheme

-- UI configurations
opt.showmode = false -- Hide the mode text (e.g., -- INSERT -- below the statusline)
opt.showcmd = false -- Hide the command in the last line of the screen
opt.cmdheight = 1 -- More space in the Neovim command line for displaying messages
opt.fillchars.eob = " " -- Suppress ~ at EndOfBuffer
opt.shortmess:append("c") -- Don't pass messages to |ins-completion-menu|.

-- Airline/Statusline settings
-- If you're using a statusline plugin like 'lualine', configure it here

-- More UI settings can be added here
