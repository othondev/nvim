local builtin = require 'telescope.builtin'

Search = {
  NvimFiles = function()
    builtin.find_files { cwd = vim.fn.stdpath 'config' }
  end,

  OpenFiles = function()
    builtin.live_grep {
      grep_open_files = true,
      prompt_title = 'Live Grep in Open Files',
    }
  end,
}
