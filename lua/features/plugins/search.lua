return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      require('telescope').setup {
        defaults = {
          preview = {
            filesize_hook = function(filepath, bufnr, opts)
              local max_bytes = 5000
              local cmd = { 'head', '-c', max_bytes, filepath }
              require('telescope.previewers.utils').job_maker(cmd, bufnr, opts)
            end,
          },
          path_display = { 'smart' },
          mappings = {
            i = {
              ['<C-k>'] = require('telescope.actions').cycle_history_next,
              ['<C-j>'] = require('telescope.actions').cycle_history_prev,
            },
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case',
          },
        },
      }
      require('telescope').load_extension 'fzf'
    end,
  },
  { 'junegunn/fzf.vim', dependencies = {
    'junegunn/fzf',
    lazy = true,
    cmd = 'FZF',
  } },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {},
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    opts = {
      filesystem = {
        window = {
          mappings = {
            ['\\'] = 'close_window',
          },
        },
      },
    },
  },
}
