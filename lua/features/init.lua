local M = {}

function M.OpenLastChangeFiles()
  print "open open"
end

function M.OpenNvimConfig()
  require("telescope.builtin").find_files {
    prompt_title = "< NVIM Config >",
    cwd = vim.fn.stdpath "config",
  }
end

function M.OpenNvimConfigFolder()
  local module_path = vim.fn.expand('<cfile>')
  local file_path = string.gsub(module_path, '%.', '/') .. '.lua'
  vim.cmd('tabnew ' .. file_path)
  M.OpenNvimConfig()
end

return M
