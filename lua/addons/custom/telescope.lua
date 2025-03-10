require("telescope").setup {
  defaults = {
    file_ignore_patterns = {
      "swagger.*", --TODO: Need to load it for a project config(maybe a file?)
    },
    preview = {
      filesize_hook = function(filepath, bufnr, opts)
        local max_bytes = 5000
        local cmd = { "head", "-c", max_bytes, filepath }
        require("telescope.previewers.utils").job_maker(cmd, bufnr, opts)
      end,
    },
    path_display = { "truncate" },
    mappings = {
      i = {
        ["<C-k>"] = require("telescope.actions").cycle_history_next,
        ["<C-j>"] = require("telescope.actions").cycle_history_prev,
        ["<C-f>"] = require("telescope.actions").to_fuzzy_refine,
      },
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  },
}
