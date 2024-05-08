local builtin = require 'telescope.builtin'

function SearchNvimFiles()
  builtin.find_files { cwd = vim.fn.stdpath 'config' }
end
