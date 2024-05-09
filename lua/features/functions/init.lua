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

Info = {
  BranchName = function()
    local handle = io.popen 'git rev-parse --abbrev-ref HEAD 2>/dev/null'
    local branchname = handle:read '*a'
    handle:close()
    return #branchname > 0 and string.gsub(branchname, '\n', '') or ''
  end,
}
